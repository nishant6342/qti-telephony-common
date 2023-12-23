.class public Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;
.super Lcom/android/internal/telephony/CellularNetworkService;
.source "QtiCellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtiCellularNetworkService"


# instance fields
.field protected mProvider:Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;

.field private mSlotId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "slotId"    # I

    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/CellularNetworkService;-><init>()V

    .line 39
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;->mSlotId:I

    .line 40
    return-void
.end method

.method private getCellularNetworkServiceProvider()Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;->mProvider:Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initiate cellular network service provider for slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiCellularNetworkService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;->mSlotId:I

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;->mProvider:Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;->mProvider:Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;

    return-object v0
.end method


# virtual methods
.method getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "domain"    # I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistrationStateFromResult, domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiCellularNetworkService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;->getCellularNetworkServiceProvider()Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;

    move-result-object v0

    .line 65
    .local v0, "provider":Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;->getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    :goto_0
    return-object v1
.end method
