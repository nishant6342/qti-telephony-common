.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;
.super Lcom/qti/extphone/ExtPhoneCallbackBase;
.source "QtiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    .line 118
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-direct {p0}, Lcom/qti/extphone/ExtPhoneCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "raf"    # I

    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQtiRadioCapabilityResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    move-object v0, v2

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 151
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 155
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    monitor-exit v2

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 147
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public networkScanResult(ILcom/qti/extphone/Token;IILjava/util/List;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # I
    .param p4, "error"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qti/extphone/Token;",
            "II",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 268
    .local p5, "cellInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkScanResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiPhoneUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    invoke-direct {v0, p3, p4, p5}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 272
    .local v0, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v1

    .line 273
    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->notifyNetworkScanResult(Lcom/android/internal/telephony/NetworkScanResult;)V

    .line 274
    return-void
.end method

.method public sendCdmaSmsResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "sms"    # Lcom/qti/extphone/SmsResult;

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCdmaSmsResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    move-object v0, v2

    .line 126
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    invoke-virtual {p4}, Lcom/qti/extphone/SmsResult;->getMessageRef()I

    move-result v2

    .line 128
    invoke-virtual {p4}, Lcom/qti/extphone/SmsResult;->getAckPDU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/qti/extphone/SmsResult;->getErrorCode()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    move-object v2, v1

    .line 129
    .local v2, "ret":Lcom/android/internal/telephony/SmsResponse;
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 132
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 136
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v3

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 126
    .end local v2    # "ret":Lcom/android/internal/telephony/SmsResponse;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setCarrierInfoForImsiEncryptionResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/QRadioResponseInfo;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "info"    # Lcom/qti/extphone/QRadioResponseInfo;

    .line 162
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmQtiCarrierInfoResponse(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;->setCarrierInfoForImsiEncryptionResponse(Lcom/qti/extphone/QRadioResponseInfo;)V

    .line 163
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(ILcom/qti/extphone/Token;I)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "errorCode"    # I

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 245
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v2, 0x0

    .line 247
    .local v2, "ret":Ljava/lang/Object;
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeAutomaticResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    move-object v0, v4

    .line 250
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    if-eqz p3, :cond_0

    .line 252
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeAutomaticResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    if-eqz v0, :cond_1

    .line 256
    invoke-static {v0, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 257
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 260
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    monitor-exit v4

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 250
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public setNetworkSelectionModeManualResponse(ILcom/qti/extphone/Token;I)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "errorCode"    # I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 221
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v2, 0x0

    .line 223
    .local v2, "ret":Ljava/lang/Object;
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeManualResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 225
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    move-object v0, v4

    .line 226
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 227
    if-eqz p3, :cond_0

    .line 228
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeManualResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    if-eqz v0, :cond_1

    .line 232
    invoke-static {v0, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 233
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 236
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    monitor-exit v4

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 226
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public startNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "errorCode"    # I

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 170
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNetworkScanResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    move-object v0, v3

    .line 173
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    const/4 v2, 0x0

    .line 175
    .local v2, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    if-nez p3, :cond_0

    .line 176
    new-instance v3, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    move-object v2, v3

    goto :goto_0

    .line 179
    :cond_0
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startNetworkScanResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 182
    .end local v2    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    .local v3, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :goto_0
    if-eqz v0, :cond_1

    .line 183
    invoke-static {v0, v3, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 184
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit v4

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 173
    .end local v3    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public stopNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "errorCode"    # I

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 195
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v2, 0x0

    .line 197
    .local v2, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopNetworkScanResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    move-object v0, v4

    .line 200
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    if-nez p3, :cond_0

    .line 202
    new-instance v3, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    move-object v2, v3

    move-object v4, v2

    goto :goto_0

    .line 205
    :cond_0
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopNetworkScanResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    .line 208
    .end local v2    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    .local v4, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :goto_0
    if-eqz v0, :cond_1

    .line 209
    invoke-static {v0, v4, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 210
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 213
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-exit v5

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 200
    .end local v4    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    .restart local v2    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method
