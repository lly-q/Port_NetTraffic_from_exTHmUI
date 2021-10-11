.class public Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;,
        Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
    }
.end annotation


# instance fields
.field protected mAttached:Z

.field private mAutoHide:Z

.field private mAutoHideThreshold:J

.field private mConnectionAvailable:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHideArrows:Z

.field protected mIconTint:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsActive:Z

.field private mLastRxBytes:J

.field private mLastTxBytes:J

.field private mLastUpdateTime:J

.field protected mLocation:I

.field private mMode:I

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mObserver:Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;

.field private mRefreshInterval:I

.field private mRxBytes:J

.field protected mScreenOn:Z

.field private mSpeedRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

.field private mSubMode:I

.field private mTrafficHandler:Landroid/os/Handler;

.field private mTxBytes:J

.field private mUnitRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

.field private mUnits:I

.field protected mVisible:Z

.field protected newTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 78
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    .line 79
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mMode:I

    .line 80
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSubMode:I

    .line 91
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIconTint:I

    const/4 p2, -0x1

    .line 92
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->newTint:I

    const/4 p2, 0x2

    .line 97
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRefreshInterval:I

    const/4 p2, 0x1

    .line 104
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mVisible:Z

    .line 105
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mScreenOn:Z

    .line 109
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    const p3, 0x3f333333  # 0.7f

    invoke-direct {p2, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSpeedRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    .line 110
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    const p3, 0x3f266666  # 0.65f

    invoke-direct {p2, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mUnitRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    .line 153
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    .line 315
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iput-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 125
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mObserver:Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;

    .line 126
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->observe()V

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .registers 3

    .line 62
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRefreshInterval:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHide:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSubMode:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/NetworkTraffic;I)I
    .registers 2

    .line 62
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSubMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mUnits:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getOffloadTetheringStats()Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/text/style/RelativeSizeSpan;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSpeedRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/text/style/RelativeSizeSpan;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mUnitRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLastTxBytes:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .registers 3

    .line 62
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLastTxBytes:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLastRxBytes:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .registers 3

    .line 62
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLastRxBytes:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTxBytes:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .registers 3

    .line 62
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTxBytes:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRxBytes:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J
    .registers 3

    .line 62
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRxBytes:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mConnectionAvailable:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mConnectionAvailable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z
    .registers 1

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->isConnectionAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mMode:I

    return p0
.end method

.method private getOffloadTetheringStats()Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;
    .registers 8

    .line 382
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;)V

    .line 386
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_16

    const-string v2, "network_management"

    .line 388
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 387
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    :cond_16
    const/4 v2, 0x0

    .line 394
    :try_start_17
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {p0, v2}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object p0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    goto :goto_36

    :catch_1e
    move-exception p0

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call getNetworkStatsTethering: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "NetworkTraffic"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_36
    if-nez p0, :cond_39

    return-object v0

    .line 407
    :cond_39
    :goto_39
    invoke-virtual {p0}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 408
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 413
    iget v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_56

    .line 414
    iget-wide v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;->txBytes:J

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;->txBytes:J

    .line 415
    iget-wide v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;->rxBytes:J

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;->rxBytes:J

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_59
    return-object v0
.end method

.method private isConnectionAvailable()Z
    .registers 1

    .line 373
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private updateSettings()V
    .registers 8

    .line 422
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_traffic_location"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 424
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    const-string v1, "network_traffic_mode"

    .line 426
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mMode:I

    const-string v1, "network_traffic_autohide"

    .line 428
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_23

    move v1, v4

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHide:Z

    const-string v1, "network_traffic_autohide_threshold"

    .line 430
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAutoHideThreshold:J

    const-string v1, "network_traffic_units"

    .line 432
    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mUnits:I

    const-string v1, "network_traffic_refresh_interval"

    const/4 v5, 0x2

    .line 436
    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mRefreshInterval:I

    const-string v1, "network_traffic_hidearrow"

    .line 438
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_49

    move v2, v4

    :cond_49
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mHideArrows:Z

    if-nez v2, :cond_54

    const v0, 0x800015

    .line 442
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_59

    :cond_54
    const/16 v0, 0x11

    .line 444
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 446
    :goto_59
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 447
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x3f4ccccd  # 0.8f

    .line 449
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setTrafficDrawable()V

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateViews()V

    return-void
.end method


# virtual methods
.method protected clearHandlerCallbacks()V
    .registers 3

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .line 132
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-nez v0, :cond_28

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_28
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 146
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_11

    .line 148
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    :cond_11
    return-void
.end method

.method protected setTrafficDrawable()V
    .registers 5

    .line 476
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 479
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mHideArrows:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mMode:I

    if-nez v1, :cond_1d

    .line 480
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mSubMode:I

    if-ne v1, v2, :cond_15

    .line 481
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_network_traffic_down:I

    goto :goto_34

    :cond_15
    if-ne v1, v3, :cond_1a

    .line 483
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_network_traffic_up:I

    goto :goto_34

    .line 485
    :cond_1a
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_network_traffic_updown:I

    goto :goto_34

    .line 487
    :cond_1d
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mHideArrows:Z

    if-nez v1, :cond_28

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mMode:I

    if-ne v1, v3, :cond_28

    .line 488
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_network_traffic_up:I

    goto :goto_34

    .line 489
    :cond_28
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mHideArrows:Z

    if-nez v1, :cond_33

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mMode:I

    if-ne v1, v2, :cond_33

    .line 490
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_network_traffic_down:I

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 494
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3d

    :cond_3c
    move-object v0, v2

    .line 495
    :goto_3d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, v0, :cond_47

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIconTint:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->newTint:I

    if-eq v1, v3, :cond_53

    .line 496
    :cond_47
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 497
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->newTint:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIconTint:I

    .line 498
    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    :cond_53
    return-void
.end method

.method protected updateTrafficDrawable()V
    .registers 4

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 505
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIconTint:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 507
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIconTint:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected updateViewState()V
    .registers 5

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected updateViews()V
    .registers 3

    .line 456
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mScreenOn:Z

    if-eqz v0, :cond_d

    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateViewState()V

    goto :goto_13

    .line 459
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    .line 460
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateVisibility()V

    :goto_13
    return-void
.end method

.method protected updateVisibility()V
    .registers 4

    .line 308
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mScreenOn:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    if-eq v0, v2, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    move v0, v1

    .line 309
    :goto_19
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mVisible:Z

    if-eq v0, v2, :cond_27

    .line 310
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mVisible:Z

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/16 v1, 0x8

    .line 311
    :goto_24
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_27
    return-void
.end method
