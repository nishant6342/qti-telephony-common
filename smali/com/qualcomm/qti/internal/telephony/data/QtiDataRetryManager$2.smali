.class Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;
.super Ljava/lang/Object;
.source "QtiDataRetryManager.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    .line 182
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResetEvent(Z)V
    .locals 4
    .param p1, "retry"    # Z

    .line 185
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResetEvent: retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    const-string v1, "onResetEvent: Dismiss dialog"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->-$$Nest$fgetmQtiDataResetEventTracker(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->stopResetEventTracker()V

    .line 192
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->-$$Nest$mresetDataRejectCounter(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)V

    .line 193
    if-eqz p1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    .line 195
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;)Lcom/android/internal/telephony/data/DataNetworkController;

    const/4 v2, 0x5

    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->sendMessage(Landroid/os/Message;)Z

    .line 199
    :cond_1
    return-void
.end method
