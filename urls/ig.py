import urllib.request
import json
from time import sleep
from urllib.parse import urlparse
from bs4 import BeautifulSoup


 # Takes in an url and file name. Creates  or open .txt based on name
def souped(url, file): # scrape specific ig page
    f = open(file+".txt", "a") # Open file and appends data to it
    page = urllib.request.urlopen(url).read() # Open url and saves html
    soup = BeautifulSoup(page, 'lxml')
    script = soup.find('script', text=lambda t: t.startswith('window._sharedData')) # Soup finds script tags

    page_json = script.text.split(' = ', 1)[1].rstrip(';')
    data = json.loads(page_json)

    url_parse = urlparse(url)
    url_path = url_parse.path

    print(url_path.strip('/'))

    # Loops through where images are and adds it to file
    for i in data["entry_data"]["ProfilePage"][0]["graphql"]["user"]['edge_owner_to_timeline_media']['edges']:
        if not i['node']['is_video']:
            f.write(i['node']['display_url']+"\n")

    f.close()


def explore(url, file): # scrap ig explore page
    f = open(file+".txt", "a")
    page = urllib.request.urlopen(url).read()
    soup = BeautifulSoup(page, 'lxml')
    script = soup.find('script', text=lambda t: t.startswith('window._sharedData'))

    page_json = script.text.split(' = ', 1)[1].rstrip(';')
    data = json.loads(page_json)

    url_parse = urlparse(url)
    url_path = url_parse.path

    print(url_path.strip('/'))

    for i in data['entry_data']['TagPage'][0]['graphql']['hashtag']['edge_hashtag_to_media']['edges']:
        if not i['node']['is_video']:
            f.write(i['node']['display_url']+"\n")

    f.close()

# souped("https://www.instagram.com/instapandacool/?hl=en")
# https://www.instagram.com/w4wild/
# https://randomfox.ca/floof/
# https://www.instagram.com/humpbackswims/?hl=en
# https://www.instagram.com/explore/tags/elephant/?hl=en
# https://www.instagram.com/daily_otters/?hl=en
# souped("https://www.instagram.com/best_birds_of_world/?hl=en", "birds")
# sleep(5)
# souped("https://www.instagram.com/beautifulsnakes/", 'snakes')
# sleep(5)
# explore("https://www.instagram.com/explore/tags/whale/?hl=en", 'whales')
# sleep(5)
# souped("https://www.instagram.com/elephantoftheweek/?hl=en", 'elephant')
# sleep(5)
# souped('https://www.instagram.com/daily_otters/?hl=en', 'otter')
# souped("https://www.instagram.com/dogs/?hl=en", 'dogs')
souped('https://www.instagram.com/topdogs_nz/', 'dogs')
