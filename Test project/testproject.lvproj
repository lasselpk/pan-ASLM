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
		<Item Name="Control_stage.vi" Type="VI" URL="../Control_stage.vi"/>
		<Item Name="main.vi" Type="VI" URL="../main.vi"/>
		<Item Name="XYZ stage control.vi" Type="VI" URL="../../XYZ stage control.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="typedef_stage_control.ctl" Type="VI" URL="../typedefs/typedef_stage_control.ctl"/>
			<Item Name="typedef_stage_position.ctl" Type="VI" URL="../typedefs/typedef_stage_position.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
