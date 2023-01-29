.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$4;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "QtiDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 476
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$4;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$4;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const v1, 0x420ca

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 480
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 481
    return-void
.end method
