.class public Lcom/qualcomm/qti/internal/telephony/data/QosParametersUtils;
.super Ljava/lang/Object;
.source "QosParametersUtils.java"


# static fields
.field public static final QOS_TYPE_EPS:I = 0x1

.field public static final QOS_TYPE_NR:I = 0x2

.field public static final TAG:Ljava/lang/String; = "QosParametersUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToFrameworkQos(Lcom/qti/extphone/Qos;)Landroid/telephony/data/Qos;
    .locals 12
    .param p0, "sourceQos"    # Lcom/qti/extphone/Qos;

    .line 43
    const-string v0, "QosParametersUtils"

    if-nez p0, :cond_0

    .line 44
    const-string v1, "convertToFrameworkQos, sourceQos is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 49
    .local v1, "frameworkQos":Landroid/telephony/data/Qos;
    new-instance v2, Landroid/telephony/data/Qos$QosBandwidth;

    .line 50
    invoke-virtual {p0}, Lcom/qti/extphone/Qos;->getDownlinkBandwidth()Lcom/qti/extphone/Qos$QosBandwidth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qti/extphone/Qos$QosBandwidth;->getMaxBitrateKbps()I

    move-result v3

    .line 51
    invoke-virtual {p0}, Lcom/qti/extphone/Qos;->getDownlinkBandwidth()Lcom/qti/extphone/Qos$QosBandwidth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qti/extphone/Qos$QosBandwidth;->getGuaranteedBitrateKbps()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(II)V

    .line 53
    .local v2, "downlink":Landroid/telephony/data/Qos$QosBandwidth;
    new-instance v3, Landroid/telephony/data/Qos$QosBandwidth;

    .line 54
    invoke-virtual {p0}, Lcom/qti/extphone/Qos;->getUplinkBandwidth()Lcom/qti/extphone/Qos$QosBandwidth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qti/extphone/Qos$QosBandwidth;->getMaxBitrateKbps()I

    move-result v4

    .line 55
    invoke-virtual {p0}, Lcom/qti/extphone/Qos;->getUplinkBandwidth()Lcom/qti/extphone/Qos$QosBandwidth;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qti/extphone/Qos$QosBandwidth;->getGuaranteedBitrateKbps()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(II)V

    .line 57
    .local v3, "uplink":Landroid/telephony/data/Qos$QosBandwidth;
    invoke-virtual {p0}, Lcom/qti/extphone/Qos;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertToFrameworkQos, unknown QoS type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/qti/extphone/Qos;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :pswitch_0
    move-object v4, p0

    check-cast v4, Lcom/qti/extphone/NrQos;

    .line 64
    .local v4, "sourceNrQos":Lcom/qti/extphone/NrQos;
    new-instance v11, Landroid/telephony/data/NrQos;

    invoke-virtual {v4}, Lcom/qti/extphone/NrQos;->getQfi()I

    move-result v8

    .line 65
    invoke-virtual {v4}, Lcom/qti/extphone/NrQos;->get5Qi()I

    move-result v9

    invoke-virtual {v4}, Lcom/qti/extphone/NrQos;->getAveragingWindow()I

    move-result v10

    move-object v5, v11

    move-object v6, v2

    move-object v7, v3

    invoke-direct/range {v5 .. v10}, Landroid/telephony/data/NrQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;III)V

    move-object v1, v11

    .line 66
    goto :goto_0

    .line 59
    .end local v4    # "sourceNrQos":Lcom/qti/extphone/NrQos;
    :pswitch_1
    move-object v4, p0

    check-cast v4, Lcom/qti/extphone/EpsQos;

    .line 60
    .local v4, "sourceEpsQos":Lcom/qti/extphone/EpsQos;
    new-instance v5, Landroid/telephony/data/EpsQos;

    invoke-virtual {v4}, Lcom/qti/extphone/EpsQos;->getQci()I

    move-result v6

    invoke-direct {v5, v2, v3, v6}, Landroid/telephony/data/EpsQos;-><init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;I)V

    move-object v1, v5

    .line 61
    nop

    .line 71
    .end local v4    # "sourceEpsQos":Lcom/qti/extphone/EpsQos;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertToFrameworkQos: source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToFrameworkQosBearerFilter(Lcom/qti/extphone/QosBearerFilter;)Landroid/telephony/data/QosBearerFilter;
    .locals 19
    .param p0, "sourceQosFilter"    # Lcom/qti/extphone/QosBearerFilter;

    .line 79
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 80
    const-string v1, "QosParametersUtils"

    const-string v2, "convertToFrameworkQosBearerFilter, sourceQosFilter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-object v0

    .line 84
    :cond_0
    nop

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getLocalPortRange()Lcom/qti/extphone/QosBearerFilter$PortRange;

    move-result-object v1

    .line 86
    .local v1, "sourceLocalPort":Lcom/qti/extphone/QosBearerFilter$PortRange;
    nop

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getRemotePortRange()Lcom/qti/extphone/QosBearerFilter$PortRange;

    move-result-object v2

    .line 89
    .local v2, "sourceRemotePort":Lcom/qti/extphone/QosBearerFilter$PortRange;
    if-eqz v1, :cond_1

    .line 90
    new-instance v3, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v1}, Lcom/qti/extphone/QosBearerFilter$PortRange;->getStart()I

    move-result v4

    invoke-virtual {v1}, Lcom/qti/extphone/QosBearerFilter$PortRange;->getEnd()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    move-object v9, v3

    goto :goto_0

    .line 91
    :cond_1
    move-object v9, v0

    :goto_0
    nop

    .line 92
    .local v9, "targetLocalPort":Landroid/telephony/data/QosBearerFilter$PortRange;
    if-eqz v2, :cond_2

    .line 93
    new-instance v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v2}, Lcom/qti/extphone/QosBearerFilter$PortRange;->getStart()I

    move-result v3

    invoke-virtual {v2}, Lcom/qti/extphone/QosBearerFilter$PortRange;->getEnd()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(II)V

    move-object v10, v0

    goto :goto_1

    .line 94
    :cond_2
    move-object v10, v0

    :goto_1
    nop

    .line 96
    .local v10, "targetRemotePort":Landroid/telephony/data/QosBearerFilter$PortRange;
    new-instance v0, Landroid/telephony/data/QosBearerFilter;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getLocalAddresses()Ljava/util/List;

    move-result-object v7

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getRemoteAddresses()Ljava/util/List;

    move-result-object v8

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getProtocol()I

    move-result v11

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getTypeOfServiceMask()I

    move-result v12

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getFlowLabel()J

    move-result-wide v13

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getSpi()J

    move-result-wide v15

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getDirection()I

    move-result v17

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/qti/extphone/QosBearerFilter;->getPrecedence()I

    move-result v18

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Landroid/telephony/data/QosBearerFilter;-><init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V

    .line 96
    return-object v0
.end method

.method public static convertToFrameworkQosBearerSession(Lcom/qti/extphone/QosBearerSession;)Landroid/telephony/data/QosBearerSession;
    .locals 4
    .param p0, "sourceQosSession"    # Lcom/qti/extphone/QosBearerSession;

    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Landroid/telephony/data/QosBearerSession;

    .line 134
    invoke-virtual {p0}, Lcom/qti/extphone/QosBearerSession;->getQosBearerSessionId()I

    move-result v1

    .line 135
    invoke-virtual {p0}, Lcom/qti/extphone/QosBearerSession;->getQos()Lcom/qti/extphone/Qos;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QosParametersUtils;->convertToFrameworkQos(Lcom/qti/extphone/Qos;)Landroid/telephony/data/Qos;

    move-result-object v2

    .line 136
    invoke-virtual {p0}, Lcom/qti/extphone/QosBearerSession;->getQosBearerFilterList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QosParametersUtils;->convertToFrameworkQosFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/data/QosBearerSession;-><init>(ILandroid/telephony/data/Qos;Ljava/util/List;)V

    .line 133
    return-object v0
.end method

.method public static convertToFrameworkQosBearerSessionsList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/extphone/QosBearerSession;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation

    .line 141
    .local p0, "sourceBearerSessions":Ljava/util/List;, "Ljava/util/List<Lcom/qti/extphone/QosBearerSession;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "targetBearerSessions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/QosBearerSession;>;"
    if-nez p0, :cond_0

    .line 144
    return-object v0

    .line 147
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/QosBearerSession;

    .line 148
    .local v2, "sourceSession":Lcom/qti/extphone/QosBearerSession;
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QosParametersUtils;->convertToFrameworkQosBearerSession(Lcom/qti/extphone/QosBearerSession;)Landroid/telephony/data/QosBearerSession;

    move-result-object v3

    .line 149
    .local v3, "targetSession":Landroid/telephony/data/QosBearerSession;
    if-eqz v3, :cond_1

    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v2    # "sourceSession":Lcom/qti/extphone/QosBearerSession;
    .end local v3    # "targetSession":Landroid/telephony/data/QosBearerSession;
    :cond_1
    goto :goto_0

    .line 154
    :cond_2
    return-object v0
.end method

.method public static convertToFrameworkQosFilterList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/extphone/QosBearerFilter;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerFilter;",
            ">;"
        }
    .end annotation

    .line 111
    .local p0, "sourceBearerFilters":Ljava/util/List;, "Ljava/util/List<Lcom/qti/extphone/QosBearerFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, "targetBearerFilters":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/QosBearerFilter;>;"
    if-nez p0, :cond_0

    .line 114
    return-object v0

    .line 117
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/QosBearerFilter;

    .line 118
    .local v2, "sourceFilter":Lcom/qti/extphone/QosBearerFilter;
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QosParametersUtils;->convertToFrameworkQosBearerFilter(Lcom/qti/extphone/QosBearerFilter;)Landroid/telephony/data/QosBearerFilter;

    move-result-object v3

    .line 119
    .local v3, "targetFilter":Landroid/telephony/data/QosBearerFilter;
    if-eqz v3, :cond_1

    .line 120
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "sourceFilter":Lcom/qti/extphone/QosBearerFilter;
    .end local v3    # "targetFilter":Landroid/telephony/data/QosBearerFilter;
    :cond_1
    goto :goto_0

    .line 124
    :cond_2
    return-object v0
.end method
