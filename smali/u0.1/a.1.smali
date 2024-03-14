.class public final Lu0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "x"

    const-string v1, "y"

    const-string v2, "k"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv0/a;->a([Ljava/lang/String;)Lv0/a;

    move-result-object v0

    sput-object v0, Lu0/a;->a:Lv0/a;

    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/e;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->a()V

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->f:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    move v6, v1

    invoke-static {}, Lw0/h;->c()F

    move-result v4

    sget-object v5, Lu0/y;->a:Lu0/y;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lu0/t;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;FLu0/L;ZZ)Lx0/a;

    move-result-object v1

    new-instance v2, Ln0/o;

    invoke-direct {v2, p1, v1}, Ln0/o;-><init>(Lk0/m;Lx0/a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->c()V

    invoke-static {v0}, Lu0/u;->b(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    new-instance p1, Lx0/a;

    invoke-static {}, Lw0/h;->c()F

    move-result v1

    invoke-static {p0, v1}, Lu0/s;->b(Lcom/airbnb/lottie/parser/moshi/a;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lx0/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance p0, Lq0/e;

    invoke-direct {p0, v0}, Lq0/e;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static b(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/m;
    .locals 8

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->g:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-eq v4, v5, :cond_5

    sget-object v4, Lu0/a;->a:Lv0/a;

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/b;->r(Lv0/a;)I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->i:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->t()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, v6}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v4

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->u()V

    :goto_1
    move v3, v6

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, v6}, Lu0/d;->b(Lcom/airbnb/lottie/parser/moshi/a;Lk0/m;Z)Lq0/b;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lu0/a;->a(Lcom/airbnb/lottie/parser/moshi/b;Lk0/m;)Lq0/e;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/b;->d()V

    if-eqz v3, :cond_6

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lk0/m;->a(Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance p0, Lq0/i;

    invoke-direct {p0, v1, v2}, Lq0/i;-><init>(Lq0/b;Lq0/b;)V

    return-object p0
.end method
