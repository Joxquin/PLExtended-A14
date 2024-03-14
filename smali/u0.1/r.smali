.class public final Lu0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/L;


# static fields
.field public static final a:Lu0/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/r;

    invoke-direct {v0}, Lu0/r;-><init>()V

    sput-object v0, Lu0/r;->a:Lu0/r;

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lu0/s;->d(Lcom/airbnb/lottie/parser/moshi/a;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
