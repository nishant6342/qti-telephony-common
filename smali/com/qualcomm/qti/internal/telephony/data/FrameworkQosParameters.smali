.class public Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;
.super Ljava/lang/Object;
.source "FrameworkQosParameters.java"


# instance fields
.field mDefaultQos:Landroid/telephony/data/Qos;

.field mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mQosBearerSessions:Ljava/util/List;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/telephony/data/Qos;Ljava/util/List;)V
    .locals 0
    .param p1, "defaultQos"    # Landroid/telephony/data/Qos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/data/Qos;",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "bearerSessions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/QosBearerSession;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 41
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mQosBearerSessions:Ljava/util/List;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/qti/extphone/QosParametersResult;)V
    .locals 1
    .param p1, "qtiQosParameters"    # Lcom/qti/extphone/QosParametersResult;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    nop

    .line 34
    invoke-virtual {p1}, Lcom/qti/extphone/QosParametersResult;->getDefaultQos()Lcom/qti/extphone/Qos;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QosParametersUtils;->convertToFrameworkQos(Lcom/qti/extphone/Qos;)Landroid/telephony/data/Qos;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 35
    nop

    .line 36
    invoke-virtual {p1}, Lcom/qti/extphone/QosParametersResult;->getQosBearerSessions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QosParametersUtils;->convertToFrameworkQosBearerSessionsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mQosBearerSessions:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getDefaultQos()Landroid/telephony/data/Qos;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mDefaultQos:Landroid/telephony/data/Qos;

    return-object v0
.end method

.method public getQosBearerSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mQosBearerSessions:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "FrameworkQosParameters: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 63
    const-string v2, " defaultQos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 64
    const-string v2, " qosBearerSessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 65
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
