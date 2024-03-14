.class public final synthetic Landroidx/dynamicanimation/animation/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$DurationScaleChangeListener;


# instance fields
.field public final synthetic a:Landroidx/dynamicanimation/animation/e;


# direct methods
.method public synthetic constructor <init>(Landroidx/dynamicanimation/animation/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/d;->a:Landroidx/dynamicanimation/animation/e;

    return-void
.end method


# virtual methods
.method public final onChanged(F)V
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/d;->a:Landroidx/dynamicanimation/animation/e;

    iget-object p0, p0, Landroidx/dynamicanimation/animation/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/dynamicanimation/animation/g;

    iput p1, p0, Landroidx/dynamicanimation/animation/g;->g:F

    return-void
.end method
