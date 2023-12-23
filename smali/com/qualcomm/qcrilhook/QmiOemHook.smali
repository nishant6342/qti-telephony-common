.class public Lcom/qualcomm/qcrilhook/QmiOemHook;
.super Landroid/os/Handler;
.source "QmiOemHook.java"


# static fields
.field private static final DEFAULT_PHONE:I = 0x0

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final QMI_OEM_HOOK_UNSOL:I = 0x0

.field private static final RESERVED_SIZE:I = 0x8

.field private static final enableVLog:Z = true

.field private static mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

.field private static mIsServiceConnected:Z

.field private static mRefCount:I

.field private static sReadyCbRegistrantList:Lorg/codeaurora/telephony/utils/RegistrantList;

.field public static serviceRegistrantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Lorg/codeaurora/telephony/utils/Registrant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field mResponseResult:I

.field public respByteBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsServiceConnected()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetsReadyCbRegistrantList()Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 1

    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsServiceConnected(Z)V
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "QMI_OEMHOOK"

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    .line 39
    new-instance v0, Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-direct {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    .line 59
    sput-boolean v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mResponseResult:I

    .line 64
    new-instance v1, Lcom/qualcomm/qcrilhook/QmiOemHook$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qcrilhook/QmiOemHook$1;-><init>(Lcom/qualcomm/qcrilhook/QmiOemHook;)V

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 85
    new-instance v2, Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {v2, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v2, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 86
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->register(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 90
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mResponseResult:I

    .line 64
    new-instance v1, Lcom/qualcomm/qcrilhook/QmiOemHook$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qcrilhook/QmiOemHook$1;-><init>(Lcom/qualcomm/qcrilhook/QmiOemHook;)V

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 91
    new-instance v2, Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {v2, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v2, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 92
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->register(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method private createPayload(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "tlvSize":I
    const/4 v1, 0x0

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    aget-object v2, p4, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_2

    .line 303
    aget-object v3, p4, v2

    .line 304
    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v2    # "i":I
    :cond_1
    :goto_1
    sget-object v2, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v3, "This message has no payload"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    add-int/lit8 v2, v0, 0xc

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 314
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 315
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 317
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 318
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 319
    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPayload: serviceId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    aget-object v1, p4, v1

    if-eqz v1, :cond_3

    .line 321
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, p4

    if-ge v1, v3, :cond_3

    .line 322
    aget-object v3, p4, v1

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V

    .line 323
    aget-object v3, p4, v1

    aget-short v4, p3, v1

    invoke-virtual {v3, v4}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toTlv(S)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 324
    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intermediate buf in QmiOemHook sendQmiMessage Sync or Async = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p4, v1

    aget-short v6, p3, v1

    .line 325
    invoke-virtual {v5, v6}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toTlv(S)[B

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    .end local v1    # "i":I
    :cond_3
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte buf in QmiOemHook createPayload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/qcrilhook/QmiOemHook;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/qualcomm/qcrilhook/QmiOemHook;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-direct {v1, p0}, Lcom/qualcomm/qcrilhook/QmiOemHook;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 101
    :cond_0
    sget v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    .line 102
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 97
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qcrilhook/QmiOemHook;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    const-class v0, Lcom/qualcomm/qcrilhook/QmiOemHook;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/qcrilhook/QmiOemHook;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 127
    :cond_0
    sget v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    .line 128
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 122
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isValidQmiMessage(Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Z
    .locals 3
    .param p0, "responseType"    # Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;
    .param p1, "requestId"    # I

    .line 284
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1

    .line 285
    const v0, 0x8044c

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 288
    :cond_1
    const v0, 0x80064

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static receive([BLandroid/os/Message;Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Ljava/util/HashMap;
    .locals 16
    .param p0, "payload"    # [B
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "responseType"    # Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/os/Message;",
            "Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 212
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive responseData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " responseType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 215
    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v4, "payload is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-object v2

    .line 218
    :cond_0
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 220
    .local v3, "respByteBuf":Ljava/nio/ByteBuffer;
    sget-object v4, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 222
    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive respByteBuf after ByteBuffer.wrap(payload) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 223
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive respByteBuf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 227
    .local v4, "requestId":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 228
    .local v5, "responseSize":I
    const/4 v6, -0x1

    .line 229
    .local v6, "serviceId":S
    const/4 v7, -0x1

    .line 231
    .local v7, "successStatus":I
    invoke-static {v1, v4}, Lcom/qualcomm/qcrilhook/QmiOemHook;->isValidQmiMessage(Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 232
    sget-object v8, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v9, "requestId NOT in QMI OemHook range, No further processing"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-object v2

    .line 236
    :cond_1
    if-lez v5, :cond_6

    .line 237
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 238
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 241
    .local v8, "messageId":S
    add-int/lit8 v9, v5, -0x4

    .line 242
    .local v9, "responseTlvSize":I
    sget-object v10, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    if-eq v1, v10, :cond_2

    .line 244
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    invoke-static {v10}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v7

    .line 246
    add-int/lit8 v9, v9, -0x2

    .line 249
    :cond_2
    sget-object v10, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive requestId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " responseSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " responseTlvSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " serviceId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " messageId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " successStatus = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " phoneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v12, p3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v10, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    if-eq v1, v11, :cond_4

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_ASYNC_RESPONSE:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    if-ne v1, v11, :cond_3

    goto :goto_0

    .line 277
    :cond_3
    return-object v10

    .line 267
    :cond_4
    :goto_0
    new-instance v11, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v11, v2, v10, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 268
    .local v11, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    sget-object v13, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codeaurora/telephony/utils/Registrant;

    .line 269
    .local v13, "r":Lorg/codeaurora/telephony/utils/Registrant;
    if-eqz v13, :cond_5

    .line 270
    sget-object v14, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying registrant for responseType = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v13, v11}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 272
    const/4 v2, 0x0

    return-object v2

    .line 274
    :cond_5
    sget-object v2, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Did not find the registered serviceId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v11    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v13    # "r":Lorg/codeaurora/telephony/utils/Registrant;
    goto :goto_1

    .line 236
    .end local v8    # "messageId":S
    .end local v9    # "responseTlvSize":I
    .end local v10    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_6
    move/from16 v12, p3

    .line 280
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static registerOnReadyCb(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering Service for OnQcRilHookReadyCb =  h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Lorg/codeaurora/telephony/utils/RegistrantList;

    monitor-enter v0

    .line 174
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v2, Lorg/codeaurora/telephony/utils/Registrant;

    invoke-direct {v2, p0, p1, p2}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerService(SLandroid/os/Handler;I)V
    .locals 5
    .param p0, "serviceId"    # S
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .line 160
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering Service Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    new-instance v3, Lorg/codeaurora/telephony/utils/Registrant;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unregisterOnReadyCb(Landroid/os/Handler;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;

    .line 185
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Lorg/codeaurora/telephony/utils/RegistrantList;

    monitor-enter v0

    .line 186
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, p0}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unregisterService(I)V
    .locals 3
    .param p0, "serviceId"    # I

    .line 179
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 180
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    int-to-short v2, p0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private vLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "logString"    # Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    .line 132
    :try_start_0
    sget v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    .line 134
    if-nez v0, :cond_0

    .line 135
    const-string v0, "dispose(): Unregistering QcRilHook and calling QcRilHook dispose"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V

    .line 136
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->unregister(Landroid/os/Handler;)V

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    .line 138
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->dispose()V

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 140
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->removeCleared()V

    goto :goto_0

    .line 142
    .end local p0    # "this":Lcom/qualcomm/qcrilhook/QmiOemHook;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose mRefCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .line 521
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "QMI_OEM_HOOK_UNSOL received"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 197
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 198
    .local v1, "mesg":Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    .line 199
    .local v2, "response":[B
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 200
    .local v3, "phoneId":I
    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QMI_OEM_HOOK_UNSOL received phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v4, 0x0

    sget-object v5, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    invoke-static {v2, v4, v5, v3}, Lcom/qualcomm/qcrilhook/QmiOemHook;->receive([BLandroid/os/Message;Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Ljava/util/HashMap;

    .line 203
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v1    # "mesg":Landroid/os/Message;
    .end local v2    # "response":[B
    .end local v3    # "phoneId":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendQmiMessage(I)[B
    .locals 2
    .param p1, "serviceHook"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B
    .locals 2
    .param p1, "serviceHook"    # I
    .param p2, "type"    # S
    .param p3, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short p2, v0, v1

    filled-new-array {p3}, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(I[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessage(I[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B
    .locals 8
    .param p1, "serviceHook"    # I
    .param p2, "types"    # [S
    .param p3, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "msgSize":I
    const/4 v1, 0x4

    .line 344
    .local v1, "HEADER_SIZE":I
    const/4 v2, 0x0

    .line 345
    .local v2, "modemId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    .line 346
    aget-object v4, p3, v3

    .line 347
    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    .line 345
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v3    # "i":I
    :cond_0
    add-int v3, v1, v0

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 355
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 356
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 358
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, p3

    if-ge v4, v5, :cond_1

    .line 359
    aget-object v5, p3, v4

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V

    .line 360
    aget-object v5, p3, v4

    aget-short v6, p2, v4

    invoke-virtual {v5, v6}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toTlv(S)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 362
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v4

    .line 364
    .local v4, "result":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 370
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    return-object v5

    .line 365
    :cond_2
    sget-object v5, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    iget-object v6, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 366
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 365
    const-string v7, "sendQmiMessage() Failed : %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v5, v4, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 368
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
.end method

.method public sendQmiMessageAsync(SSLandroid/os/Message;)V
    .locals 1
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SSLandroid/os/Message;I)V

    .line 512
    return-void
.end method

.method public sendQmiMessageAsync(SSLandroid/os/Message;I)V
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "msg"    # Landroid/os/Message;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    .line 517
    return-void
.end method

.method public sendQmiMessageAsync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;)V
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "type"    # S
    .param p4, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    .line 478
    return-void
.end method

.method public sendQmiMessageAsync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    .locals 8
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "type"    # S
    .param p4, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "msg"    # Landroid/os/Message;
    .param p6, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendQmiMessageAsync phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v0, 0x1

    new-array v4, v0, [S

    const/4 v0, 0x0

    aput-short p3, v4, v0

    filled-new-array {p4}, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    .line 488
    return-void
.end method

.method public sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;)V
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    .line 421
    return-void
.end method

.method public sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    .locals 4
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "msg"    # Landroid/os/Message;
    .param p6, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendQmiMessageAsync phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Lcom/qualcomm/qcrilhook/OemHookCallback;

    invoke-direct {v0, p5}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 438
    .local v0, "qmiOemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 439
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qcrilhook/QmiOemHook;->createPayload(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v2

    .line 438
    const v3, 0x80064

    invoke-virtual {v1, v3, v2, v0, p6}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 441
    return-void
.end method

.method public sendQmiMessageSync(SS)Ljava/util/HashMap;
    .locals 1
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;
    .locals 6
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "type"    # S
    .param p4, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSS",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "type"    # S
    .param p4, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSS",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x1

    new-array v4, v0, [S

    const/4 v0, 0x0

    aput-short p3, v4, v0

    filled-new-array {p4}, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;
    .locals 6
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS[S[",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;
    .locals 4
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS[S[",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 393
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qcrilhook/QmiOemHook;->createPayload(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v1

    .line 391
    const v2, 0x80064

    invoke-virtual {v0, v2, v1, p5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v0

    .line 395
    .local v0, "result":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 401
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 403
    .local v1, "responseData":[B
    const/4 v2, 0x0

    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_SYNC_RESPONSE:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    invoke-static {v1, v2, v3, p5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->receive([BLandroid/os/Message;Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Ljava/util/HashMap;

    move-result-object v2

    return-object v2

    .line 396
    .end local v1    # "responseData":[B
    :cond_0
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 397
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 396
    const-string v3, "sendQmiMessage() Failed : %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 399
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method
