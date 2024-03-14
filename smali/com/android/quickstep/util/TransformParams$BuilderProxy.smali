.class public interface abstract Lcom/android/quickstep/util/TransformParams$BuilderProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final ALWAYS_VISIBLE:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

.field public static final NO_OP:Lcom/android/quickstep/util/TransformParams$BuilderProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/util/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->NO_OP:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    new-instance v0, Lcom/android/quickstep/util/d0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->ALWAYS_VISIBLE:Lcom/android/quickstep/util/TransformParams$BuilderProxy;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->lambda$static$0(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/TransformParams$BuilderProxy;->lambda$static$1(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$static$1(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    return-void
.end method


# virtual methods
.method public abstract onBuildTargetParams(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V
.end method
