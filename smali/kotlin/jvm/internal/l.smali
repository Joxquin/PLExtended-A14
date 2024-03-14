.class public final Lkotlin/jvm/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_1a

    instance-of v0, p1, Le3/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    instance-of v0, p1, Lkotlin/jvm/internal/g;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/jvm/internal/g;

    invoke-interface {v0}, Lkotlin/jvm/internal/g;->getArity()I

    move-result v0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lm3/a;

    if-eqz v0, :cond_1

    move v0, v1

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lm3/l;

    if-eqz v0, :cond_2

    move v0, v2

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lm3/p;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lm3/q;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, Lm3/r;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Lm3/s;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_6
    instance-of v0, p1, Lm3/t;

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_7
    instance-of v0, p1, Lm3/u;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, Lm3/v;

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_9
    instance-of v0, p1, Lm3/w;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_a
    instance-of v0, p1, Lm3/b;

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    :cond_b
    instance-of v0, p1, Lm3/c;

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    goto :goto_0

    :cond_c
    instance-of v0, p1, Lm3/d;

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    :cond_d
    instance-of v0, p1, Lm3/e;

    if-eqz v0, :cond_e

    const/16 v0, 0xd

    goto :goto_0

    :cond_e
    instance-of v0, p1, Lm3/f;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    :cond_f
    instance-of v0, p1, Lm3/g;

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    goto :goto_0

    :cond_10
    instance-of v0, p1, Lm3/h;

    if-eqz v0, :cond_11

    const/16 v0, 0x10

    goto :goto_0

    :cond_11
    instance-of v0, p1, Lm3/i;

    if-eqz v0, :cond_12

    const/16 v0, 0x11

    goto :goto_0

    :cond_12
    instance-of v0, p1, Lm3/j;

    if-eqz v0, :cond_13

    const/16 v0, 0x12

    goto :goto_0

    :cond_13
    instance-of v0, p1, Lm3/k;

    if-eqz v0, :cond_14

    const/16 v0, 0x13

    goto :goto_0

    :cond_14
    instance-of v0, p1, Lm3/m;

    if-eqz v0, :cond_15

    const/16 v0, 0x14

    goto :goto_0

    :cond_15
    instance-of v0, p1, Lm3/n;

    if-eqz v0, :cond_16

    const/16 v0, 0x15

    goto :goto_0

    :cond_16
    instance-of v0, p1, Lm3/o;

    if-eqz v0, :cond_17

    const/16 v0, 0x16

    goto :goto_0

    :cond_17
    const/4 v0, -0x1

    :goto_0
    if-ne v0, p0, :cond_18

    move v1, v2

    :cond_18
    if-eqz v1, :cond_19

    goto :goto_1

    :cond_19
    const-string v0, "kotlin.jvm.functions.Function"

    invoke-static {v0, p0}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be cast to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const-class p0, Lkotlin/jvm/internal/l;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1a
    :goto_1
    return-void
.end method
