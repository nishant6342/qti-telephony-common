.class Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;
.super Lcom/qti/extphone/ExtPhoneCallbackListener;
.source "QtiGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .line 160
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-direct {p0}, Lcom/qti/extphone/ExtPhoneCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkSelectionModeResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "modes"    # Lcom/qti/extphone/NetworkSelectionMode;

    .line 176
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    const-string v1, "ExtPhoneCallback: getNetworkSelectionModeResponse"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    move-object v0, v2

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1, p1, v0, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$monCheckForNetworkSelectionModeAutomatic(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;ILandroid/os/Message;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V

    .line 182
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 183
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-exit v2

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 180
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 3
    .param p1, "token"    # Lcom/qti/extphone/Token;
    .param p2, "status"    # Lcom/qti/extphone/Status;
    .param p3, "enableStatus"    # Z

    .line 169
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: getSecureModeStatusResponse enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Z)V

    .line 171
    return-void
.end method

.method public onImeiTypeChanged([Lcom/qti/extphone/QtiImeiInfo;)V
    .locals 2
    .param p1, "imeiInfo"    # [Lcom/qti/extphone/QtiImeiInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    if-nez p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    const-string v1, "Invalid IMEI Info"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mloge(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 191
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 194
    return-void
.end method

.method public onSecureModeStatusChange(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onSecureModeStatusChange enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->-$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Z)V

    .line 165
    return-void
.end method
