#include <linux/init.h>
#include <linux/module.h>
#include <linux/i2c.h>
#include <linux/delay.h>

/* Add your code here */

static int nunchuk_read_registers(struct i2c_client *client, u8 *recv)
{
	u8 buf[1];
	int ret;

	mdelay(10);

	buf[0] = 0x00;
	ret = i2c_master_send(client, buf, 1);
	if (ret != 1) {
		dev_err(&client->dev, "i2c send failed %d\n", ret);
		return ret < 0 ? ret : -EIO;
	}

	mdelay(10);

	ret = i2c_master_recv(client, recv, 6);
	if (ret != 6) {
		dev_err(&client->dev, "i2c recv failed %d\n", ret);
		return ret < 0 ? ret : -EIO;
	}

	return 0;
}


static int nunchuk_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
	int ret;
	u8 buf[2];
	u8 recv[6];
	int zPressed, cPressed;

	pr_info("nunchuk_probe is called\n");

	buf[0] = 0x40;
	buf[1] = 0x00;
	ret = i2c_master_send(client, buf, 2);
	if (ret != 2) {
		dev_err(&client->dev, "i2c send failed %d\n", ret);
		goto exit_failed;
	}

	udelay(1000);

	buf[0] = 0x00;
	ret = i2c_master_send(client, buf, 1);
	if (ret != 1) {
		dev_err(&client->dev, "i2c send failed %d\n", ret);
		goto exit_failed;
	}	


	ret = nunchuk_read_registers(client, recv);
	if (ret < 0) {
		dev_err(&client->dev, "nuchuk_read_registers failed %d\n", ret);
		goto exit_failed;
	}

	ret = nunchuk_read_registers(client, recv);
	if (ret < 0) {
		dev_err(&client->dev, "nunchuk_read_registers failed %d\n", ret);
		goto exit_failed;
	}

	zPressed = !(1 & 0x1);

	zPressed = !(recv[5] & 0x1);
	cPressed = !(recv[5] & 0x2);

	if (zPressed) {
		dev_info(&client->dev, "Z button pressed");
	}

	if (cPressed) {
		dev_info(&client->dev, "C button pressed");
	}

	return 0;

exit_failed:
	return ret;
}

static int nunchuk_remove(struct i2c_client *client)
{
	pr_info("nunchuk_remove is called\n");
	return 0;
}

static const struct i2c_device_id nunchuk_id[] = {
	{ "nunchuk", 0 },
	{ },
};
MODULE_DEVICE_TABLE(i2c, nunchuk_id);

static struct of_device_id nunchuk_dt_match[] = {
	{ .compatible = "nintendo,nunchuk", },
	{ },
};

static struct i2c_driver nunchuk_driver = {
	.driver = {
		.name = "nunchuk",
		.owner = THIS_MODULE,
		.of_match_table = nunchuk_dt_match,
	},
	.probe = nunchuk_probe,
	.remove = nunchuk_remove,
	.id_table = nunchuk_id,
};

module_i2c_driver(nunchuk_driver);

MODULE_LICENSE("GPL");
