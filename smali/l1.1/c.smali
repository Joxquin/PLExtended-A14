.class public final Ll1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/a;


# instance fields
.field public final a:Ll1/a;

.field public final b:D

.field public final c:D


# direct methods
.method public constructor <init>(Ll1/a;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/c;->a:Ll1/a;

    iput-wide p2, p0, Ll1/c;->b:D

    iput-wide p4, p0, Ll1/c;->c:D

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 4

    const-string v0, "sourceColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll1/c;->a:Ll1/a;

    invoke-interface {v0, p1}, Ll1/a;->a(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v0

    iget-wide v2, p0, Ll1/c;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide p0, p0, Ll1/c;->c:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method
