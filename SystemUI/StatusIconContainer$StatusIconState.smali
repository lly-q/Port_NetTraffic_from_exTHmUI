.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusIconState"
.end annotation


# instance fields
.field distanceToViewEnd:F

.field public justAdded:Z

.field public visibleState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    const/4 v0, 0x0

    .line 416
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 420
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .locals 8

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 429
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float/2addr v0, v2

    .line 431
    instance-of v2, p1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v2, :cond_1

    return-void

    .line 434
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 439
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v5, :cond_5

    .line 440
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v5

    if-ne v5, v7, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-nez v5, :cond_2

    goto :goto_1

    .line 446
    :cond_2
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-eq v1, v5, :cond_4

    .line 447
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-ne v1, v7, :cond_3

    move v4, v6

    goto :goto_2

    .line 452
    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$100()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    goto :goto_2

    :cond_4
    if-eq v5, v7, :cond_6

    .line 454
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_6

    .line 456
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$200()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    goto :goto_2

    .line 442
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 443
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 444
    invoke-interface {v2, v7}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    .line 445
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$000()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    .line 459
    :cond_6

    :goto_2
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v5

    const-string v7, "networktraffic"

    if-ne v5, v7, :cond_74

    move v4, v6

    goto :goto_75

    :cond_74
    .line 435
    :goto_75
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-interface {v2, v1, v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    if-eqz v3, :cond_7

    .line 461
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_3

    .line 463
    :cond_7
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 466
    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 467
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method
