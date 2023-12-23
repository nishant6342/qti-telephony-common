.class Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;
.super Lcom/motorola/android/telephony/MotoExtPhoneStateListener;
.source "QtiDataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;I)V
    .locals 0
    .param p2, "subId"    # I

    .line 253
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/MotoExtPhoneStateListener;-><init>(Ljava/lang/Integer;)V

    .line 255
    return-void
.end method


# virtual methods
.method public onOemHookRawEvent([B)V
    .locals 6
    .param p1, "data"    # [B

    .line 259
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 261
    .local v0, "bf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 262
    .local v1, "msgId":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 263
    .local v2, "secondId":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcPhoneStateListener: oem msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " secondId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;Ljava/lang/String;)V

    .line 264
    if-nez v1, :cond_0

    const v3, 0x40016

    if-ne v2, v3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->-$$Nest$misReadyForProfileSync(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->-$$Nest$munRegisterForMbnChanged(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;)V

    .line 268
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->updateDataProfilesAtModem()V

    .line 269
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->updateInitialAttachDataProfileAtModem(Z)V

    .line 272
    :cond_0
    return-void
.end method
