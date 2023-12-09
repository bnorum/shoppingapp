import 'package:shoppingapp/item.dart';

List<Item> items = [
  Item(
    'Gross Jacket', 
    5.00, 
    1,
    0,
    'https://cdn.discordapp.com/attachments/303728940634210304/1182876155485888582/IMG_9741.jpg?ex=65864a44&is=6573d544&hm=e66b13e8d065216fdc9bd21ae9ef8bec347654b34890c38490994e0ed9e9452c&',
    'rare jacket'
  ),
  Item(
    'Guitar', 
    150.00, 
    1, 
    3,
    'https://cdn.discordapp.com/attachments/303728940634210304/1182876258686734487/IMG_9742.jpg?ex=65864a5c&is=6573d55c&hm=1fd0e5b83ee8dd5589b82394e142771f682ece76bddd7bb19274c50be0cec632&',
    'rare guitar'
    ),
  Item(
    'Framed License', 
    1000000.00, 
    1, 
    3,
    'https://i.imgur.com/fdqABZK.png',
    'very rare license'
  ),
  Item(
    'Lamp', 
    60.00, 
    1, 
    2,
    'https://cdn.discordapp.com/attachments/303728940634210304/1182876448881659984/IMG_9744.jpg?ex=65864a8a&is=6573d58a&hm=3fb54b704e559ced76a0f383c2fbd9d121955496ea2f9de8524e99e1776feb69&',
    'this is a lamp'
  ),
  Item(
    'Timbs', 
    61.00, 
    2, 
    0,
    'https://cdn.discordapp.com/attachments/303728940634210304/1183134275172847666/IMG_9748.jpg?ex=65873aa8&is=6574c5a8&hm=89a10e0f719fa1f1a66e4824fc2979e4613b7745d7e7a258505e77f25bb1a5d4&',
    'baby timbs never worn'
  ),
  Item(
    'Things Fall Apart by Chinua Achebe',
    10.00, 
    1, 
    0,
    'https://cdn.discordapp.com/attachments/303728940634210304/1183134720595341362/IMG_9750.jpg?ex=65873b12&is=6574c612&hm=f014de64e5747f89b0f0896e0aa78ed7321afc651b169bd518d9f948ae02772e&',
    'goat book'
  ),
  Item(
    'The New Testament', 
    5.00, 
    1, 
    0,
    'https://cdn.discordapp.com/attachments/303728940634210304/1183134812987457666/IMG_9751.jpg?ex=65873b28&is=6574c628&hm=928ddaa5044c2a9a06b9591f05b41369f68e6efe5308cb551e9deba8e034f5d1&',
    'bible'
  ),
  Item(
    'Ulysses by James Joyce',
    100.00, 
    1, 
    0,
    'https://cdn.discordapp.com/attachments/303728940634210304/1183134601275777144/IMG_9749.jpg?ex=65873af6&is=6574c5f6&hm=395c964d4ccb84a6631dbf483268dda9e4e3b702b42ab473b1654bfe2b154e37&',
    'goat book'
  ),
 ];



List<Item> getItems() {
  return items;
}