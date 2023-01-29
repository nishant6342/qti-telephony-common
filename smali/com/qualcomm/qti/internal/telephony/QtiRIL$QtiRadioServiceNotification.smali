.class final Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "QtiRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QtiRadioServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 117
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiRadio interface service started "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " preexisting ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->-$$Nest$misQtiRadioServiceConnected(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->-$$Nest$minitQtiRadio(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    .line 131
    :cond_0
    return-void
.end method
