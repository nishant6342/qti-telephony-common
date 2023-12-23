.class Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;
.super Landroid/os/Handler;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    .line 54
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 77
    :sswitch_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    const-string v1, "EVENT_DATA_ENABLED_CHANGED"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    const-string v1, "DATA_ENABLED_CHANGED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mnotifyResetEvent(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;Z)V

    goto :goto_0

    .line 59
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 60
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 61
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    .line 62
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$fgetmPreviousRAT(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$fgetmPreviousRAT(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)I

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 63
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RAT CHANGED, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$fgetmPreviousRAT(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    const-string v4, "DATA_RAT_CHANGED"

    invoke-static {v3, v4, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mnotifyResetEvent(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;Z)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$fputmPreviousRAT(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;I)V

    goto :goto_0

    .line 72
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :sswitch_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    const-string v2, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-static {v0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;

    const-string v2, "RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-static {v0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;->-$$Nest$mnotifyResetEvent(Lcom/qualcomm/qti/internal/telephony/data/QtiDataResetEventTracker;Ljava/lang/String;Z)V

    .line 74
    nop

    .line 82
    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42006 -> :sswitch_2
        0x42029 -> :sswitch_1
        0x4202e -> :sswitch_0
    .end sparse-switch
.end method
