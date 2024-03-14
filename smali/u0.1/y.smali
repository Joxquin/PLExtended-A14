.class public final Lu0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/L;


# static fields
.field public static final a:Lu0/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/y;

    invoke-direct {v0}, Lu0/y;-><init>()V

    sput-object v0, Lu0/y;->a:Lu0/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lu0/s;->b(Lcom/airbnb/lottie/parser/moshi/a;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
