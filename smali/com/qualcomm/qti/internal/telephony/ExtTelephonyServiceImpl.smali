.class public Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.super Lorg/codeaurora/internal/IExtTelephony$Stub;
.source "ExtTelephonyServiceImpl.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ExtTelephonyServiceImpl"

.field private static final TELEPHONY_SERVICE_NAME:Ljava/lang/String; = "qti.radio.extphone"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# instance fields
.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mQtiUiccEfHelper:Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init constructor, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 61
    const-string v0, "qti.radio.extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    const-string v1, "ExtTelephonyServiceImpl: Adding IExtTelephony to ServiceManager as qti.radio.extphone"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 64
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 68
    :cond_0
    const-string v0, "extphone"

    .line 69
    .local v0, "TEMP_TELEPHONY_SERVICE_NAME":Ljava/lang/String;
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 70
    const-string v2, "ExtTelephonyServiceImpl: Adding IExtTelephony to ServiceManager as extphone"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 72
    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    :cond_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 75
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiUiccEfHelper:Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;

    .line 76
    return-void
.end method

.method private enforceReadPrivilegedPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceReadPrivilegedPermission for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 2

    .line 52
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    const-class v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-enter v0

    .line 41
    :try_start_0
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 42
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;-><init>()V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "ExtTelephonyServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 129
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump ExtPhone from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "without permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 142
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public getPhoneIdForECall()I
    .locals 1

    .line 86
    const-string v0, "getPhoneIdForECall"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPhoneIdForECall(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public hasGetIccFileHandler(II)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "family"    # I

    .line 92
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiUiccEfHelper:Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->loadIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_PRIVILEGED_PHONE_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readEfFromIcc(III)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "efId"    # I

    .line 108
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiUiccEfHelper:Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->readUiccEf(III)Z

    move-result v0

    return v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_PRIVILEGED_PHONE_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeEfToIcc(III[B)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "family"    # I
    .param p3, "efId"    # I
    .param p4, "efData"    # [B

    .line 119
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiUiccEfHelper:Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccEfHelper;->writeUiccEf(III[B)Z

    move-result v0

    return v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_PRIVILEGED_PHONE_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
