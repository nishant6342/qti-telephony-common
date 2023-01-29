.class Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;
.super Lcom/qti/extphone/ExtPhoneCallbackBase;
.source "QtiIccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    .line 86
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-direct {p0}, Lcom/qti/extphone/ExtPhoneCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 3
    .param p1, "token"    # Lcom/qti/extphone/Token;
    .param p2, "status"    # Lcom/qti/extphone/Status;
    .param p3, "enableStatus"    # Z

    .line 95
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: getSecureModeStatusResponse enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;Z)V

    .line 97
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

    .line 89
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onSecureModeStatusChange enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->logd(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;->-$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/QtiIccSmsInterfaceManager;Z)V

    .line 91
    return-void
.end method
