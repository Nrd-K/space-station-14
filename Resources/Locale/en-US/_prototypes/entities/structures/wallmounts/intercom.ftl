ent-BaseIntercom = intercom
    .desc = An intercom. For when the station just needs to know something.
ent-IntercomAssembly = intercom assembly
    .desc = An intercom. It doesn't seem very helpful right now.
ent-IntercomConstructed = { ent-BaseIntercom }
    .suffix = Empty, Panel Open
    .desc = { ent-BaseIntercom.desc }
ent-Intercom = { ent-IntercomConstructed }
    .desc = { ent-IntercomConstructed.desc }
ent-BaseIntercomSecure = { ent-Intercom }
    .desc = { ent-Intercom.desc }
ent-IntercomCommon = { ent-Intercom }
    .suffix = Common
    .desc = { ent-Intercom.desc }
ent-IntercomCommand = { ent-BaseIntercomSecure }
    .desc = An intercom. It's been reinforced with metal.
    .suffix = Command
ent-IntercomEngineering = { ent-Intercom }
    .suffix = Engineering
    .desc = { ent-Intercom.desc }
ent-IntercomMedical = { ent-Intercom }
    .suffix = Medical
    .desc = { ent-Intercom.desc }
ent-IntercomScience = { ent-Intercom }
    .suffix = Science
    .desc = { ent-Intercom.desc }
ent-IntercomSecurity = { ent-BaseIntercomSecure }
    .desc = An intercom. It's been reinforced with metal from security helmets, making it a bitch-and-a-half to open.
    .suffix = Security
ent-IntercomService = { ent-Intercom }
    .suffix = Service
    .desc = { ent-Intercom.desc }
ent-IntercomSupply = { ent-Intercom }
    .suffix = Supply
    .desc = { ent-Intercom.desc }
ent-IntercomAll = { ent-Intercom }
    .suffix = All
    .desc = { ent-Intercom.desc }
