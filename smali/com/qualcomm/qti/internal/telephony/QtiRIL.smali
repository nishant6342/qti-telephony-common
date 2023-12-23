.class public final Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.super Lcom/android/internal/telephony/RIL;
.source "QtiRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;
    }
.end annotation


# static fields
.field private static final ACCESS_MODE_PLMN:I = 0x1

.field private static final NETWORK_ACCESS_MODE:Ljava/lang/String; = "access_mode"

.field private static final PROPERTY_CAG_SNPN:Ljava/lang/String; = "persist.vendor.cag_snpn"

.field static final QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "QTIRILJ"


# instance fields
.field private mCagSnpnFeatureStatus:I

.field mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

.field mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse$Stub;

.field final mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

.field private mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

.field mQtiPhoneId:I

.field private mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

.field mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

.field final mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

.field private final mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;


# direct methods
.method static bridge synthetic -$$Nest$minitQtiRadio(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->initQtiRadio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misQtiRadioServiceConnected(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isQtiRadioServiceConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetServiceAndRequestList(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 66
    const-string v0, "slot2"

    const-string v1, "slot3"

    const-string v2, "slot1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    .line 84
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    .line 183
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 184
    const-string v0, "QTIRILJ"

    const-string v1, "QtiRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    .line 186
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->registerForQtiRadioServiceNotification()V

    .line 187
    return-void
.end method

.method private addRanToOperatorNumeric(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I

    .line 469
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 465
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private declared-synchronized initQtiRadio()V
    .locals 4

    monitor-enter p0

    .line 159
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 160
    if-nez v0, :cond_0

    .line 161
    const-string v0, "QTIRILJ"

    const-string v1, "initQtiRadio: mQtiRadio is null. Return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 164
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiRIL;
    :cond_0
    :try_start_1
    const-string v0, "QTIRILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initQtiRadio: mQtiRadio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 166
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 165
    invoke-interface {v0, v1, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 167
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    invoke-direct {v0, p0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    .line 168
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "QTIRILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initQtiRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private isQtiRadioServiceConnected()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerForQtiRadioServiceNotification()V
    .locals 5

    .line 142
    const-string v0, "QTIRILJ"

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    const-string v2, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadio"

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    .line 143
    invoke-interface {v1, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v1

    .line 145
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 146
    const-string v2, "Failed to register for service start notifications"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "ret":Z
    :cond_0
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register for service start notifications. Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private resetServiceAndRequestList()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetProxyAndRequestList()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 99
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    .line 100
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

    .line 101
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 102
    return-void
.end method

.method private sendCdmaSms([BLandroid/os/Message;Z)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "expectMore"    # Z

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCdmaSms,  expectMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sendCdmaSms(I[BLandroid/os/Message;Z)Z

    move-result v0

    .line 546
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 547
    const-string v2, "fall back to default sendCdmaSms"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 550
    :cond_0
    return-void
.end method


# virtual methods
.method public disable5g(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 230
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 231
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->disable5g(I)V

    .line 236
    return-void

    .line 234
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enable5g(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 220
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 221
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->enable5g(I)V

    .line 226
    return-void

    .line 224
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enable5gOnly(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 240
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 241
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->enable5gOnly(I)V

    .line 246
    return-void

    .line 244
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableEndc(IZ)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 398
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v0

    .line 399
    .local v0, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v0, :cond_0

    .line 400
    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->enableEndc(IZ)V

    .line 404
    return-void

    .line 402
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAccessMode()I
    .locals 3

    .line 584
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEnhancedRadioCapability(Landroid/os/Message;)V
    .locals 8
    .param p1, "response"    # Landroid/os/Message;

    .line 443
    const-string v0, "getEnhancedRadioCapability request failed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnhancedRadioCapability, response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QTIRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "exception":Z
    const/4 v3, 0x0

    .line 447
    .local v3, "ret":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v6

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v6, v7, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getQtiRadioCapability(ILandroid/os/Message;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v6

    .line 453
    if-nez v1, :cond_0

    if-nez v3, :cond_2

    .line 454
    :cond_0
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz p1, :cond_2

    .line 456
    :goto_0
    nop

    .line 457
    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 456
    invoke-static {p1, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 458
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 453
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 448
    :catch_0
    move-exception v6

    .line 449
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "getEnhancedRadioCapability, exception"

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    const/4 v1, 0x1

    .line 453
    .end local v6    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_1

    if-nez v3, :cond_2

    .line 454
    :cond_1
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz p1, :cond_2

    .line 456
    goto :goto_0

    .line 462
    :cond_2
    :goto_1
    return-void

    .line 453
    :goto_2
    if-nez v1, :cond_3

    if-nez v3, :cond_4

    .line 454
    :cond_3
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz p1, :cond_4

    .line 456
    nop

    .line 457
    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 456
    invoke-static {p1, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 458
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 461
    :cond_4
    throw v6
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    move v0, p2

    .line 362
    .local v0, "propVal":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 363
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v1

    .line 364
    .local v1, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v1, :cond_0

    .line 366
    :try_start_0
    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v2

    .line 368
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "API Error"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 371
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "QTIRILJ"

    const-string v3, "getPropertyValueBool HAL API not available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 375
    :goto_0
    return v0
.end method

.method public getPropertyValueInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    move v0, p2

    .line 344
    .local v0, "propVal":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 345
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v1

    .line 346
    .local v1, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v1, :cond_0

    .line 348
    :try_start_0
    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 351
    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "API Error"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "QTIRILJ"

    const-string v3, "getPropertyValueInt HAL API not available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 357
    :goto_0
    return v0
.end method

.method public getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    move-object v0, p2

    .line 380
    .local v0, "propVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 381
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v1

    .line 382
    .local v1, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v1, :cond_0

    .line 384
    :try_start_0
    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 387
    goto :goto_0

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "API Error"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "QTIRILJ"

    const-string v3, "getPropertyValueString HAL API not available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0
.end method

.method public getQtiRadioProxy(Landroid/os/Message;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 191
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mIsCellularSupported:Z

    const/4 v1, 0x1

    const-string v2, "QTIRILJ"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 192
    const-string v0, "getQtiRadioProxy: Not calling getService(): wifi-only"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz p1, :cond_0

    .line 194
    nop

    .line 195
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 194
    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 196
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 198
    :cond_0
    return-object v3

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    if-nez v0, :cond_2

    .line 203
    const-string v0, "getQtiRadioProxy: mRadioProxy == null"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p1, :cond_2

    .line 205
    nop

    .line 206
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 205
    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 207
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    return-object v0
.end method

.method public isCagSnpnEnabled()Z
    .locals 4

    .line 575
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 576
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    const-string v1, "persist.vendor.cag_snpn"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCagSnpnEnable, mCagSnpnFeatureStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_1
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public notifyNetworkScanResult(Lcom/android/internal/telephony/NetworkScanResult;)V
    .locals 3
    .param p1, "nsr"    # Lcom/android/internal/telephony/NetworkScanResult;

    .line 105
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 107
    return-void
.end method

.method qtiGetMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;

    .line 554
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method qtiProcessResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 559
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method qtiProcessResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ret"    # Ljava/lang/Object;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "str"    # Ljava/lang/Object;

    .line 563
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->processResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method public query5gConfigInfo(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 312
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;

    move-result-object v0

    .line 313
    .local v0, "radioProxy2_1":Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;
    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->query5gConfigInfo(I)V

    .line 318
    return-void

    .line 316
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public query5gStatus(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 250
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 251
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->query5gStatus(I)V

    .line 256
    return-void

    .line 254
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryEndcStatus(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 408
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v0

    .line 409
    .local v0, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v0, :cond_0

    .line 410
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->queryEndcStatus(I)V

    .line 414
    return-void

    .line 412
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrBearerAllocation(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 270
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 271
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrBearerAllocation(I)V

    .line 276
    return-void

    .line 274
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrConfig(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 333
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;

    move-result-object v0

    .line 334
    .local v0, "radioProxy2_5":Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;
    if-eqz v0, :cond_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrConfig: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QTIRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->queryNrConfig(I)V

    .line 340
    return-void

    .line 338
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrDcParam(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 260
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 261
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrDcParam(I)V

    .line 266
    return-void

    .line 264
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrIconType(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 301
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;

    move-result-object v0

    .line 302
    .local v0, "radioProxy2_2":Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;
    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;->queryNrIconType(I)V

    .line 307
    return-void

    .line 305
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrSignalStrength(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 280
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 281
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrSignalStrength(I)V

    .line 286
    return-void

    .line 284
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryUpperLayerIndInfo(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 290
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;

    move-result-object v0

    .line 291
    .local v0, "radioProxy2_1":Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;
    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->queryUpperLayerIndInfo(I)V

    .line 296
    return-void

    .line 294
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 535
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->canToggleUiccApplicationsEnablement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSMSExpectMore([BLandroid/os/Message;)V

    .line 537
    return-void

    .line 539
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->sendCdmaSms([BLandroid/os/Message;Z)V

    .line 540
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 524
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->canToggleUiccApplicationsEnablement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 526
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->sendCdmaSms([BLandroid/os/Message;Z)V

    .line 530
    return-void
.end method

.method public setCallbacks(Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse$Stub;Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;)V
    .locals 0
    .param p1, "qtiRadioResponse"    # Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse$Stub;
    .param p2, "qtiRadioIndication"    # Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    .line 570
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse$Stub;

    .line 571
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    .line 572
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarrierInfoForImsiEncryption,  serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    invoke-virtual {v0, v1, p2, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;)V

    .line 420
    return-void
.end method

.method public setImsiEncryptionResponseCallback(Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;)V
    .locals 0
    .param p1, "qtiCarrierInfo"    # Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 215
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 216
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 512
    const-string v0, "QTIRILJ"

    const-string v1, "setNetworkSelectionModeAutomatic"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 515
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getAccessMode()I

    move-result v2

    .line 514
    invoke-virtual {v0, v1, v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->setNetworkSelectionModeAutomatic(IILandroid/os/Message;)Z

    goto :goto_0

    .line 517
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 519
    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 2
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 503
    const-string v0, "QTIRILJ"

    const-string v1, "setNetworkSelectionModeManual"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)Z

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    .line 509
    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {p0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 482
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 483
    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p0, v1, p3, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 486
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessNetworks(I)I

    move-result v2

    .line 487
    .local v2, "halRan":I
    nop

    .line 488
    invoke-direct {p0, p1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->addRanToOperatorNumeric(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "operatorNumericWithRan":Ljava/lang/String;
    const-string v4, "QTIRILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " operatorNumeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [PHONE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result v4

    invoke-interface {v0, v4, v3}, Landroid/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeManual(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v2    # "halRan":I
    .end local v3    # "operatorNumericWithRan":Ljava/lang/String;
    goto :goto_0

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x4

    const-string v4, "setNetworkSelectionModeManual"

    invoke-virtual {p0, v3, v4, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 500
    .end local v0    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public setNrConfig(ILorg/codeaurora/internal/NrConfig;)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "config"    # Lorg/codeaurora/internal/NrConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 322
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;

    move-result-object v0

    .line 323
    .local v0, "radioProxy2_5":Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;
    if-eqz v0, :cond_0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrConfig: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " config= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codeaurora/internal/NrConfig;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QTIRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p2}, Lorg/codeaurora/internal/NrConfig;->get()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->setNrConfig(II)V

    .line 329
    return-void

    .line 327
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 2
    .param p1, "networkScanRequest"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "result"    # Landroid/os/Message;

    .line 423
    const-string v0, "QTIRILJ"

    const-string v1, "startNetworkScan"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)Z

    goto :goto_0

    .line 428
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    .line 431
    :goto_0
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 434
    const-string v0, "QTIRILJ"

    const-string v1, "stopNetworkScan"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->stopNetworkScan(ILandroid/os/Message;)Z

    goto :goto_0

    .line 438
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->stopNetworkScan(Landroid/os/Message;)V

    .line 440
    :goto_0
    return-void
.end method
