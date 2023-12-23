.class public Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;
.super Ljava/lang/Object;
.source "QtiCarrierInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QtiCarrierInfoResponse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager;

    .line 23
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCarrierInfoForImsiEncryptionResponse(Lcom/qti/extphone/QRadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Lcom/qti/extphone/QRadioResponseInfo;

    .line 27
    const-string v0, "QtiCarrierInfoManager"

    const-string v1, "CarrierInfoForImsiEncryptionResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
