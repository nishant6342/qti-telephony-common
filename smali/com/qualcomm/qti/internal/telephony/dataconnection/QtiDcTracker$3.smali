.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;
.super Landroid/database/ContentObserver;
.source "QtiDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getCiwlanUiInfoAndStartTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 426
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 429
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmCrossSimCallingUri(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const-string v1, "SubscriptionManager CROSS_SIM_ENABLED_CONTENT_URI changed"

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "uriString":Ljava/lang/String;
    const/16 v1, 0x2f

    .line 437
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .local v1, "subId":I
    nop

    .line 443
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmSubId(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 450
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$misCrossSimCallingEnabledByUser(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fputmIsCiwlanFeatureEnabledByUser(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Z)V

    .line 451
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmIsCiwlanFeatureEnabledByUser(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 452
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const v3, 0x420cb

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 445
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid subId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 446
    return-void

    .line 438
    .end local v1    # "subId":I
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 440
    return-void

    .line 457
    .end local v0    # "uriString":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_1
    return-void
.end method
