#ifndef __REDISCLIENT_H__
#define __REDISCLIENT_H__

#include "hiredis.h"

#include <string>
#include <stdint.h>
#include <set>

using namespace std;

class RedisClient 
{
public:
	RedisClient();
	virtual ~RedisClient();
	int Connect(const char *hostname, uint16_t port = 6379);
	int Ping();
	int ReConnect();
	int Set(const std::string &key, const char *value, size_t len);
	int Set(const std::string &key, const std::string &value);
	int Get(const std::string &key, std::string &value);
	int DBSize(int *sz);
	void Close();
	int err();
	const char *errstr();
protected:
	std::string hostname_;
	uint16_t port_;
	redisContext *c_;
	int errcode_;
	std::string errstr_;
};

#endif //!__REDISCLIENT_H__
