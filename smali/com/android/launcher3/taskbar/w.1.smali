.class public final synthetic Lcom/android/launcher3/taskbar/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 3

    iget p0, p0, Lcom/android/launcher3/taskbar/w;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    and-int/lit8 p0, p1, 0x20

    if-nez p0, :cond_0

    and-int/lit16 p0, p1, 0x80

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_1
    and-int/lit8 p0, p1, 0x10

    if-nez p0, :cond_1

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :pswitch_2
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :pswitch_3
    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_5

    and-int/lit8 v2, p1, 0x10

    if-nez v2, :cond_5

    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v1

    :goto_1
    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_7

    if-eqz p0, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    return v0

    :pswitch_4
    and-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_8

    move v0, v1

    :cond_8
    return v0

    :pswitch_5
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_9

    move v0, v1

    :cond_9
    return v0

    :pswitch_6
    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_a

    move v0, v1

    :cond_a
    return v0

    :pswitch_7
    and-int/lit16 p0, p1, 0x4000

    if-eqz p0, :cond_b

    move v0, v1

    :cond_b
    return v0

    :pswitch_8
    and-int/lit16 p0, p1, 0x1400

    if-nez p0, :cond_c

    move v0, v1

    :cond_c
    return v0

    :pswitch_9
    and-int/lit8 p0, p1, 0x20

    if-nez p0, :cond_d

    move v0, v1

    :cond_d
    return v0

    :pswitch_a
    and-int/lit16 p0, p1, 0x2000

    if-nez p0, :cond_e

    move v0, v1

    :cond_e
    return v0

    :pswitch_b
    and-int/lit8 p0, p1, 0x20

    if-nez p0, :cond_f

    and-int/lit16 p0, p1, 0x800

    if-nez p0, :cond_f

    move v0, v1

    :cond_f
    return v0

    :pswitch_c
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_10

    and-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_10

    move v0, v1

    :cond_10
    return v0

    :goto_2
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_11

    and-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_11

    move v0, v1

    :cond_11
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
