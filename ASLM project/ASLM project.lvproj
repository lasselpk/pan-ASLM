<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="SAE_stage_control.vi" Type="VI" URL="../SAE_stage_control.vi"/>
		<Item Name="stage_control_typedef.ctl" Type="VI" URL="../stage_control_typedef.ctl"/>
		<Item Name="typedef_stage_control.ctl" Type="VI" URL="../typedef_stage_control.ctl"/>
		<Item Name="xyz AE.vi" Type="VI" URL="../xyz AE.vi"/>
		<Item Name="XYZ stage control.vi" Type="VI" URL="../XYZ stage control.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
