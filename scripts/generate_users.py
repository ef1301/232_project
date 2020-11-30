"""Generate insertions for user and anime_list tables."""
import urllib.request
import json
from random import randrange

USERS_URL = "https://api.namefake.com/api.name-fake.com/english-united-states/"
GENRE_COUNT = 30
ANIME_COUNT = 20
USER_COUNT = 21


def generate_users_list(num):
    """Generate list of users."""
    users = []
    for i in range(num):
        with urllib.request.urlopen(USERS_URL) as url:
            data = json.loads(url.read().decode())
            user = {
                "id": i,
                "username": data['username'],
                "email": f"{data['email_u']}@{data['email_d']}",
                "password": data['password']
            }
            users.append(user)
    return users


def create_user_insertions(collection):
    """Create SQL insertion queries for users."""
    ret = ""
    for user in collection:
        ret += """\
INSERT INTO users VALUES ({id}, '{username}', '{email}', '{password}');
""".format(**user)
    return ret


def create_animelist_insertions(user_num, anime_num):
    """Create SQL insertion queries for anime_list."""
    ret = ""
    for i in range(1, user_num + 1):
        anime_seen = [-1]
        for _ in range(randrange(2, anime_num + 1)):
            anime_id = -1
            while anime_id in anime_seen:
                anime_id = randrange(1, anime_num + 1)
            anime_seen.append(anime_id)
            ret += """\
INSERT INTO anime_list VALUES ({user_id}, {anime_id}, {rating});
""".format(user_id=i, anime_id=anime_id, rating=randrange(1, 10 + 1))
    return ret


def main():
    """Heart of the program."""
    users_list = generate_users_list(USER_COUNT)
    user_insertions = create_user_insertions(users_list)
    print(user_insertions)
    animelist_insertions = create_animelist_insertions(USER_COUNT, ANIME_COUNT)
    print()
    print(animelist_insertions)


if __name__ == "__main__":
    main()
