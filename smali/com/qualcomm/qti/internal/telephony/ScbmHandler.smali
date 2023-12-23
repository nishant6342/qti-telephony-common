.class public Lcom/qualcomm/qti/internal/telephony/ScbmHandler;
.super Landroid/os/Handler;
.source "ScbmHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;
    }
.end annotation


# static fields
.field public static final CANCEL_SCM_TIMER:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ScbmHandler"

.field public static final RESTART_SCM_TIMER:I

.field private static sScbmHandler:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;


# instance fields
.field private final ACTION_SMS_CALLBACK_MODE:Ljava/lang/String;

.field private final EXTRA_SMS_CALLBACK_MODE:Ljava/lang/String;

.field private final EXTRA_SMS_PERMISSION:Ljava/lang/String;

.field private imsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

.field private mContext:Landroid/content/Context;

.field private mIsExitScbmFeatureRetrieved:Z

.field private mIsExitScbmFeatureSupported:Z

.field private mIsPhoneInScbmState:Z

.field private mQtiImsExtConnector:Lorg/codeaurora/ims/QtiImsExtConnector;

.field private mQtiImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

.field private mScbmExitRespRegistrant:Landroid/os/Registrant;

.field private mScbmPhoneId:I

.field private final mScbmReceiver:Landroid/content/BroadcastReceiver;

.field private mScmCanceledForEmergency:Z

.field private final mScmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsExitScbmFeatureRetrieved(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureRetrieved:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsExitScbmFeatureSupported(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiImsExtConnector(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Lorg/codeaurora/ims/QtiImsExtConnector;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mQtiImsExtConnector:Lorg/codeaurora/ims/QtiImsExtConnector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiImsExtManager(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Lorg/codeaurora/ims/QtiImsExtManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mQtiImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsExitScbmFeatureRetrieved(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureRetrieved:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsExitScbmFeatureSupported(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureSupported:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQtiImsExtManager(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;Lorg/codeaurora/ims/QtiImsExtManager;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mQtiImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateQtiImsExtConnector(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->createQtiImsExtConnector(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetScbmPhoneId(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)I
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getScbmPhoneId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleEnterScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->handleEnterScbm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleExitScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->handleExitScbm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCarrierConfigEnabledScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isCarrierConfigEnabledScbm(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetIsInScbm(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->setIsInScbm(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScbmPhoneId(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->setScbmPhoneId(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->sScbmHandler:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 55
    const-string v0, "org.codeaurora.intent.action.SMS_CALLBACK_MODE"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->ACTION_SMS_CALLBACK_MODE:Ljava/lang/String;

    .line 57
    const-string v1, "sms_callback_mode"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->EXTRA_SMS_CALLBACK_MODE:Ljava/lang/String;

    .line 58
    const-string v1, "com.qti.permission.RECEIVE_SMS_CALLBACK_MODE"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->EXTRA_SMS_PERMISSION:Ljava/lang/String;

    .line 62
    const/4 v2, -0x1

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScbmPhoneId:I

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsPhoneInScbmState:Z

    .line 67
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScmCanceledForEmergency:Z

    .line 68
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureRetrieved:Z

    .line 69
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureSupported:Z

    .line 131
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$1;-><init>(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)V

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScbmReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$2;

    invoke-direct {v4, p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$2;-><init>(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->imsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 73
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mContext:Landroid/content/Context;

    .line 74
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v4, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mContext:Landroid/content/Context;

    .line 77
    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 78
    const-string v0, "ril.inscbm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, v2, v2}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->setIsInScbm(IZ)V

    .line 80
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->handleExitScbm()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    .line 87
    .local v1, "numPhones":I
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 88
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;

    invoke-direct {v3, p0, v2}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;-><init>(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;I)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .end local v1    # "numPhones":I
    .end local v2    # "phoneId":I
    :cond_1
    return-void
.end method

.method private createQtiImsExtConnector(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 293
    :try_start_0
    new-instance v0, Lorg/codeaurora/ims/QtiImsExtConnector;

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$3;-><init>(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)V

    invoke-direct {v0, p1, v1}, Lorg/codeaurora/ims/QtiImsExtConnector;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/QtiImsExtConnector$IListener;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mQtiImsExtConnector:Lorg/codeaurora/ims/QtiImsExtConnector;
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    const-string v1, "createQtiImsExtConnector"

    const-string v2, "Unable to create QtiImsExtConnector"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0    # "e":Lorg/codeaurora/ims/QtiImsException;
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;
    .locals 2

    .line 263
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->sScbmHandler:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    if-eqz v0, :cond_0

    .line 266
    return-object v0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ScbmHandler was not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getScbmPhoneId()I
    .locals 2

    .line 241
    const/4 v0, -0x1

    .line 242
    .local v0, "phoneId":I
    monitor-enter p0

    .line 243
    :try_start_0
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScbmPhoneId:I

    move v0, v1

    .line 244
    monitor-exit p0

    .line 245
    return v0

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleEnterScbm()V
    .locals 2

    .line 180
    const-string v0, "ScbmHandler"

    const-string v1, "handleEnterScbm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->sendSmsCallbackModeChange()V

    .line 183
    return-void
.end method

.method private handleExitScbm()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScbmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 198
    :cond_0
    const-string v0, "ScbmHandler"

    const-string v1, "handleExitScbm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->sendSmsCallbackModeChange()V

    .line 200
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->setScbmPhoneId(I)V

    .line 201
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 253
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->sScbmHandler:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    const-string v1, "ScbmHandler"

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "Scbm Handler already initialized."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 257
    :cond_0
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->sScbmHandler:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    .line 258
    const-string v0, "init(): ScbmHandler initialized."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method private isCarrierConfigEnabledScbm(I)Z
    .locals 4
    .param p1, "subId"    # I

    .line 170
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mContext:Landroid/content/Context;

    .line 171
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 172
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 173
    return v1

    .line 175
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 176
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_1

    const-string v3, "use_sms_callback_mode_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private sendSmsCallbackModeChange()V
    .locals 3

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.SMS_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.codeaurora.extra.PHONE_IN_SCM_STATE"

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isInScbm()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getScbmPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 190
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 191
    const-string v1, "ScbmHandler"

    const-string v2, "sendSmsCallbackModeChange"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method private setIsInScbm(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isInScbm"    # Z

    .line 227
    const-string v0, "ril.inscbm"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iput-boolean p2, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsPhoneInScbmState:Z

    .line 230
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScbmPhoneId:I

    .line 231
    monitor-exit p0

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScbmPhoneId(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScbmPhoneId:I

    .line 237
    monitor-exit p0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScbmTimerCanceledForEmergency(Z)V
    .locals 0
    .param p1, "isCanceled"    # Z

    .line 398
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScmCanceledForEmergency:Z

    .line 399
    return-void
.end method


# virtual methods
.method public exitScbm()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mQtiImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    const-string v1, "ScbmHandler"

    if-eqz v0, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getScbmPhoneId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mQtiImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getScbmPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->imsInterfaceListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/QtiImsExtManager;->exitScbm(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitScbm exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0    # "e":Lorg/codeaurora/ims/QtiImsException;
    :goto_0
    return-void

    .line 339
    :cond_1
    :goto_1
    const-string v0, "mQtiImsExtManager is null or SCBM phoneId invalid."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method public handleModemReset()V
    .locals 2

    .line 350
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isInScbm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getScbmPhoneId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->setIsInScbm(IZ)V

    .line 352
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->handleExitScbm()V

    .line 354
    :cond_0
    return-void
.end method

.method public isExitScbmFeatureSupported()Z
    .locals 5

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureRetrieved:Z

    if-eqz v0, :cond_0

    .line 374
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureSupported:Z

    monitor-exit p0

    return v0

    .line 376
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getScbmPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 379
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mQtiImsExtManager:Lorg/codeaurora/ims/QtiImsExtManager;

    if-eqz v1, :cond_1

    .line 381
    nop

    .line 382
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 381
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QtiImsExtManager;->isExitScbmFeatureSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureSupported:Z

    .line 383
    const-string v1, "ScbmHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExitScbmFeatureSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureRetrieved:Z

    .line 385
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsExitScbmFeatureSupported:Z
    :try_end_1
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Lorg/codeaurora/ims/QtiImsException;
    const-string v2, "ScbmHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExitScbmFeatureSupported exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v1    # "e":Lorg/codeaurora/ims/QtiImsException;
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 376
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isInScbm()Z
    .locals 2

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "isPhoneInScbmState":Z
    monitor-enter p0

    .line 209
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsPhoneInScbmState:Z

    move v0, v1

    .line 210
    monitor-exit p0

    .line 211
    return v0

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInScbm(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "status":Z
    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mIsPhoneInScbmState:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScbmPhoneId:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 222
    monitor-exit p0

    .line 223
    return v0

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isScbmTimerCanceledForEmergency()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScmCanceledForEmergency:Z

    return v0
.end method

.method public registerForScbmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    return-void
.end method

.method public setOnScbmExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 270
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScbmExitRespRegistrant:Landroid/os/Registrant;

    .line 271
    return-void
.end method

.method public unregisterForScbmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 368
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 369
    return-void
.end method

.method public unsetOnScbmExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 274
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->mScbmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 275
    return-void
.end method
