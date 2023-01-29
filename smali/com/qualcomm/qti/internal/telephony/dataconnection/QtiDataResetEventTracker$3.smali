.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;
.super Landroid/telephony/PhoneStateListener;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->startResetEventTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 162
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 164
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnection onCellLocationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 166
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_4

    .line 167
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 168
    .local v0, "currentLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$fgetmPreviousLocation(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$fgetmPreviousLocation(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$fgetmPreviousLocation(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$fgetmPreviousLocation(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    const-string v2, "DataConnection location updated"

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    const/4 v2, 0x1

    const-string v3, "LOCATION_UPDATED"

    invoke-static {v1, v3, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$mnotifyResetEvent(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;Z)V

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-static {v1, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$fputmPreviousLocation(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Landroid/telephony/gsm/GsmCellLocation;)V

    goto :goto_1

    .line 169
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$3;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    const-string v2, "Received invalid location. Ignore"

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->-$$Nest$mlog(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 170
    return-void

    .line 182
    .end local v0    # "currentLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    :goto_1
    return-void
.end method
