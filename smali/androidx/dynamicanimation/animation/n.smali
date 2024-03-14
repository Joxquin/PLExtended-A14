.class public final Landroidx/dynamicanimation/animation/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public final c:Landroidx/dynamicanimation/animation/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Landroidx/dynamicanimation/animation/n;->a:F

    new-instance v0, Landroidx/dynamicanimation/animation/i;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/i;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/n;->c:Landroidx/dynamicanimation/animation/i;

    return-void
.end method
