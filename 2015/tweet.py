import twython

consumer_key = 'XXXXXXXXXXX'
consumer_secret = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXX'
access_token = 'XXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXXX'
access_token_secret = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'

twitter = twython.Twython(consumer_key, consumer_secret, access_token, access_token_secret)

twitter.update_status(status='Hello, twitter world!')
