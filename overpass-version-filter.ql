
[out:csv(::id, ::version, ::timestamp)];

(node["name"~"^refugee$"]({{bbox}})(if:version()>1 && version()<4); 
node["amenity"~"^refugee$"]({{bbox}})(if:version()>1 && version()<4);
node["residential"~"^displace$"]({{bbox}})(if:version()>1 && version()<4);
node["refugee"~"^yes$"]({{bbox}})(if:version()>1 && version()<4);
node["event"~"^refugee$"]({{bbox}})(if:version()>1 && version()<4); 
node["refugee_aid_point"~"^yes$"]({{bbox}})(if:version()>1 && version()<4);
node["operator"~"^Refugee$"]({{bbox}})(if:version()>1 && version()<4); 
node["operator"~"^UNHCR$"]({{bbox}})(if:version()>1 && version()<4); 
node["operator"~"^UNRWA$"]({{bbox}})(if:version()>1 && version()<4); 
node["name"~"^UNHCR$"]({{bbox}})(if:version()>1 && version()<4);
);

out meta qt;
make info versions=set(version());
