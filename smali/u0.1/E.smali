.class public final Lu0/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/L;


# static fields
.field public static final a:Lu0/E;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/E;

    invoke-direct {v0}, Lu0/E;-><init>()V

    sput-object v0, Lu0/E;->a:Lu0/E;

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->n()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->a()V

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->j()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->j()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->u()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/a;->c()V

    :cond_3
    new-instance p0, Lx0/d;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lx0/d;-><init>(FF)V

    return-object p0
.end method
