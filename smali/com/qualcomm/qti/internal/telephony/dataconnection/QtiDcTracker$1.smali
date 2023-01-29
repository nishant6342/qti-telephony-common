.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;
.super Ljava/lang/Object;
.source "QtiDcTracker.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


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

    .line 153
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const-string v1, "ExtTelephony Service connected"

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fputmExtTelephonyServiceConnected(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Z)V

    .line 158
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    invoke-virtual {v1, v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Lcom/qti/extphone/Client;)V

    .line 160
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->getDdsSwitchCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 165
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$300(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->isEpdgOverCellularDataSupported(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fputmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Z)V

    .line 166
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCiwlanFeatureEnabledByPlatform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEpdgOverCellularDataSupported Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 172
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const-string v1, "ExtTelephony Service disconnected..."

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fputmExtTelephonyServiceConnected(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Z)V

    .line 178
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fputmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Z)V

    .line 179
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->unRegisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 180
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Lcom/qti/extphone/Client;)V

    .line 181
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const v1, 0x420c8

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 182
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    return-void
.end method
