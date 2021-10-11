.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;
.super Landroid/os/Handler;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private formatOutput(J)Ljava/lang/CharSequence;
    .registers 11

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v0

    if-nez v0, :cond_30

    const-wide/16 v0, 0x8

    mul-long/2addr p1, v0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->gigabitspersecond_short:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->megabitspersecond_short:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->kilobitspersecond_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_54

    .line 262
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->gigabytespersecond_short:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->megabytespersecond_short:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->kilobytespersecond_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_54
    const-wide/32 v3, 0x3b9aca00

    cmp-long v3, p1, v3

    const-string v4, "0.00"

    if-ltz v3, :cond_6e

    .line 269
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    const p2, 0x4e6e6b28  # 1.0E9f

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 270
    invoke-virtual {v1, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_eb

    :cond_6e
    const-wide/32 v5, 0x5f5e100

    cmp-long v0, p1, v5

    const v3, 0x49742400  # 1000000.0f

    if-ltz v0, :cond_88

    .line 272
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "###0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v3

    float-to-double p1, p1

    .line 274
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    :goto_86
    move-object v0, v1

    goto :goto_eb

    :cond_88
    const-wide/32 v5, 0x989680

    cmp-long v0, p1, v5

    const-string v5, "#0.0"

    if-ltz v0, :cond_9e

    .line 276
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v3

    float-to-double p1, p1

    .line 278
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_86

    :cond_9e
    const-wide/32 v6, 0xf4240

    cmp-long v0, p1, v6

    if-ltz v0, :cond_b2

    .line 280
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v3

    float-to-double p1, p1

    .line 282
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_86

    :cond_b2
    const-wide/32 v0, 0x186a0

    cmp-long v0, p1, v0

    const/high16 v1, 0x447a0000  # 1000.0f

    if-ltz v0, :cond_cb

    .line 284
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "##0"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v1

    float-to-double p1, p1

    .line 286
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    :goto_c9
    move-object v0, v2

    goto :goto_eb

    :cond_cb
    const-wide/16 v6, 0x2710

    cmp-long v0, p1, v6

    if-ltz v0, :cond_de

    .line 288
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v1

    float-to-double p1, p1

    .line 290
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_c9

    .line 292
    :cond_de
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p1, p1

    div-float/2addr p1, v1

    float-to-double p1, p1

    .line 294
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    goto :goto_c9

    .line 296
    :goto_eb
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/text/style/RelativeSizeSpan;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {p2, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 300
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/text/style/RelativeSizeSpan;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p0, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/CharSequence;

    aput-object p2, p0, v2

    const/4 p2, 0x1

    const-string v0, "\n"

    aput-object v0, p0, p2

    const/4 p2, 0x2

    aput-object p1, p0, p2

    .line 303
    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 159
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_78

    long-to-float p1, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 160
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    const v5, 0x3f733333  # 0.95f

    mul-float/2addr v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_78

    .line 166
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    .line 167
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    add-long/2addr v4, v8

    add-long/2addr v6, v8

    .line 174
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;

    move-result-object v10

    .line 175
    iget-wide v11, v10, Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;->txBytes:J

    add-long/2addr v4, v11

    .line 176
    iget-wide v10, v10, Lcom/android/systemui/statusbar/policy/NetworkTraffic$TetheringStats;->rxBytes:J

    add-long/2addr v6, v10

    .line 183
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v10

    sub-long v10, v4, v10

    .line 184
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v12}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$400(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v12

    sub-long v12, v6, v12

    cmp-long v2, v2, v8

    if-lez v2, :cond_69

    cmp-long v2, v10, v8

    if-ltz v2, :cond_69

    cmp-long v2, v12, v8

    if-ltz v2, :cond_69

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    long-to-float v3, v10

    const/high16 v8, 0x447a0000  # 1000.0f

    div-float/2addr p1, v8

    div-float/2addr v3, p1

    float-to-long v8, v3

    invoke-static {v2, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$502(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    long-to-float v3, v12

    div-float/2addr v3, p1

    float-to-long v8, v3

    invoke-static {v2, v8, v9}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$602(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 190
    :cond_69
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {p1, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$302(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 191
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {p1, v6, v7}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$402(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 192
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$002(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 195
    :cond_78
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$800(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$702(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Z)Z

    .line 196
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mLocation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8f

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mScreenOn:Z

    if-eqz p1, :cond_8f

    move p1, v1

    goto :goto_90

    :cond_8f
    move p1, v2

    .line 197
    :goto_90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 198
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v0

    if-eq v0, v1, :cond_a3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_a3

    :cond_a1
    move v0, v2

    goto :goto_a4

    :cond_a3
    :goto_a3
    move v0, v1

    .line 199
    :goto_a4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 200
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b8

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$900(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v3

    if-nez v3, :cond_b6

    goto :goto_b8

    :cond_b6
    move v3, v2

    goto :goto_b9

    :cond_b8
    :goto_b8
    move v3, v1

    :goto_b9
    if-eqz v0, :cond_cb

    .line 201
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_dd

    :cond_cb
    if-eqz v3, :cond_df

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 202
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_df

    :cond_dd
    move v5, v1

    goto :goto_e0

    :cond_df
    move v5, v2

    .line 203
    :goto_e0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    if-eqz p1, :cond_fa

    iget-boolean v7, v6, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v7, :cond_fa

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v7

    if-eqz v7, :cond_f8

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$700(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v7

    if-eqz v7, :cond_fa

    if-eqz v5, :cond_fa

    :cond_f8
    move v5, v1

    goto :goto_fb

    :cond_fa
    move v5, v2

    :goto_fb
    iput-boolean v5, v6, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsActive:Z

    .line 206
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->clearHandlerCallbacks()V

    .line 208
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mIsActive:Z

    if-eqz v6, :cond_177

    if-eqz v0, :cond_14c

    if-eqz v3, :cond_14c

    .line 211
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_125

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_169

    .line 214
    :cond_125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gez v0, :cond_141

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(J)Ljava/lang/CharSequence;

    move-result-object v0

    move v1, v4

    goto :goto_169

    .line 218
    :cond_141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_168

    :cond_14c
    if-eqz v3, :cond_159

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$600(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_168

    :cond_159
    if-eqz v0, :cond_166

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$500(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(J)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_168

    :cond_166
    const-string v0, ""

    :goto_168
    move v1, v2

    .line 228
    :goto_169
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eq v0, v3, :cond_178

    .line 229
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_178

    :cond_177
    move v1, v2

    .line 233
    :cond_178
    :goto_178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->updateVisibility()V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mVisible:Z

    if-eqz v3, :cond_193

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v0

    if-eq v0, v1, :cond_193

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkTraffic;I)I

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setTrafficDrawable()V

    :cond_193
    if-eqz p1, :cond_1ab

    .line 241
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->mAttached:Z

    if-eqz v0, :cond_1ab

    .line 242
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 243
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->access$100(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    .line 242
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1ab
    return-void
.end method
