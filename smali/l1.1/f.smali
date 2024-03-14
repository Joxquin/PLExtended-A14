.class public final Ll1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/a;


# instance fields
.field public final a:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ll1/f;->a:D

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2

    const-string v0, "sourceColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result p1

    float-to-double v0, p1

    iget-wide p0, p0, Ll1/f;->a:D

    mul-double/2addr v0, p0

    return-wide v0
.end method
