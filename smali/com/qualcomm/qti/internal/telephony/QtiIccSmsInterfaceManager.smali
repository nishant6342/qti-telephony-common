.class public Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "QtiIccSmsInterfaceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtiIccSmsInterfaceManager"


# instance fields
.field private mCallback:Lcom/qti/extphone/IExtPhoneCallback;

.field private mContext:Landroid/content/Context;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mIsInSecureMode:Z

.field private mPackageName:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQtiRadioConfigClient:Lcom/qti/extphone/Client;

.field private mServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/IExtPhoneCallback;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mQtiRadioConfigClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mQtiRadioConfigClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    .line 63
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 86
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 49
    const-string v0, "Constructor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mPackageName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 54
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 55
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsPermissions;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appOps"    # Landroid/app/AppOpsManager;
    .param p4, "dispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;
    .param p5, "smsPermissions"    # Lcom/android/internal/telephony/SmsPermissions;

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/SmsPermissions;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    .line 63
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 86
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 61
    return-void
.end method

.method private filterDestAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->filterDestAddr(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method private triggerSentIntentForFailure(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .line 164
    if-eqz p1, :cond_0

    .line 166
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "Intent has been canceled!"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 171
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_0
    return-void
.end method

.method private triggerSentIntentForFailure(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 179
    .local v1, "sentIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    .line 180
    .end local v1    # "sentIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method


# virtual methods
.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 189
    const-string v0, "QtiIccSmsInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 193
    const-string v0, "QtiIccSmsInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIJ)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributionTag"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZIJ)V"
        }
    .end annotation

    .line 136
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object v2, p3

    invoke-direct {p0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 137
    .local v1, "isEmergency":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMultipartTextWithOptions: mIsInSecureMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEmergency = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 139
    iget-boolean v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 140
    move-object v3, p6

    invoke-direct {p0, p6}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->triggerSentIntentForFailure(Ljava/util/List;)V

    goto :goto_0

    .line 139
    :cond_0
    move-object v3, p6

    .line 142
    invoke-super/range {p0 .. p13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIJ)V

    .line 146
    :goto_0
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z
    .param p8, "messageId"    # J

    .line 104
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 105
    .local v0, "isEmergency":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendText: mIsInSecureMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmergency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 106
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0, p5}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    .line 112
    :goto_0
    return-void
.end method

.method public sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributionTag"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I

    .line 119
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 120
    .local v0, "isEmergency":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextWithOptions: mIsInSecureMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmergency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 122
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0, p6}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-super/range {p0 .. p11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 129
    :goto_0
    return-void
.end method

.method public sendTextWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributeTag"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "persistMessage"    # Z
    .param p9, "isForVvm"    # Z

    .line 152
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 153
    .local v0, "isEmergency":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextWithSelfPermissions: mIsInSecureMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmergency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 155
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->mIsInSecureMode:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0, p6}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    .line 161
    :goto_0
    return-void
.end method
