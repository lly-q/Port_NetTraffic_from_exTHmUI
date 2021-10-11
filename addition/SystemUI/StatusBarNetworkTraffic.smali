.class public Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;
.super Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.source "StatusBarNetworkTraffic.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field private mColorIsStatic:Z

.field private mSystemIconVisible:Z

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mVisibleState:I

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mSystemIconVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mVisibleState:I

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mSystemIconVisible:Z

    return-void
.end method

.method private checkUpdateTrafficDrawable()V
    .registers 3

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mVisible:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIconTint:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->newTint:I

    if-eq v0, v1, :cond_f

    .line 134
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIconTint:I

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateTrafficDrawable()V

    :cond_f
    return-void
.end method


# virtual methods
.method public getSlot()Ljava/lang/String;
    .registers 1

    const-string p0, "networktraffic"

    return-object p0
.end method

.method public getVisibleState()I
    .registers 1

    .line 87
    iget p0, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mVisibleState:I

    return p0
.end method

.method public isIconVisible()Z
    .registers 2

    .line 82
    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 57
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mColorIsStatic:Z

    if-eqz p2, :cond_5

    return-void

    .line 60
    :cond_5
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->newTint:I

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->checkUpdateTrafficDrawable()V

    return-void
.end method

.method public setDecorColor(I)V
    .registers 2

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .registers 3

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mColorIsStatic:Z

    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->newTint:I

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->checkUpdateTrafficDrawable()V

    return-void
.end method

.method public setVisibleState(IZ)V
    .registers 3

    .line 92
    iget p2, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mVisibleState:I

    if-ne p1, p2, :cond_5

    return-void

    .line 95
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mVisibleState:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mSystemIconVisible:Z

    goto :goto_10

    :cond_d
    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mSystemIconVisible:Z

    .line 107
    :goto_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->updateVisibility()V

    return-void
.end method

.method protected updateViews()V
    .registers 2

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->isIconVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mScreenOn:Z

    if-eqz v0, :cond_e

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateViewState()V

    goto :goto_14

    .line 115
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->updateVisibility()V

    :goto_14
    return-void
.end method

.method protected updateVisibility()V
    .registers 4

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->mSystemIconVisible:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->isIconVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mScreenOn:Z

    if-eqz v0, :cond_1d

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    if-eq v0, v2, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 124
    :goto_1e
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mVisible:Z

    if-eq v0, v2, :cond_2f

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mVisible:Z

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/16 v1, 0x8

    .line 126
    :goto_29
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarNetworkTraffic;->checkUpdateTrafficDrawable()V

    :cond_2f
    return-void
.end method
