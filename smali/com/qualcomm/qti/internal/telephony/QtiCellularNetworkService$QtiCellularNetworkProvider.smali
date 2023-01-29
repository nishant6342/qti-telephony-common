.class Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;
.super Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;
.source "QtiCellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QtiCellularNetworkProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;-><init>(Lcom/android/internal/telephony/CellularNetworkService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService$QtiCellularNetworkProvider;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiCellularNetworkService;)V

    return-void
.end method


# virtual methods
.method protected getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "domain"    # I

    .line 25
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 26
    .local v0, "info":Landroid/telephony/NetworkRegistrationInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NRI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiCellularNetworkService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-object v0
.end method
