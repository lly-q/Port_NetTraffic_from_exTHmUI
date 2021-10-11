.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheringStats"
.end annotation


# instance fields
.field rxBytes:J

.field txBytes:J


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .registers 2

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;)V
    .registers 3

    .line 376
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;-><init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    return-void
.end method
