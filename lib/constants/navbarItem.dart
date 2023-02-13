class INavbarItem {
  String name;
  String route;
  INavbarItem({required this.name, required this.route});
}

INavbarItem about = INavbarItem(name: 'À propos', route: 'about');
INavbarItem ourServices =
    INavbarItem(name: 'Nos Services', route: 'ourServices');
INavbarItem contact = INavbarItem(name: 'Contact', route: 'contact');
INavbarItem ourClients = INavbarItem(name: 'Nos Clients', route: 'ourClients');

final itemList = [ourServices, ourClients, about, contact];
