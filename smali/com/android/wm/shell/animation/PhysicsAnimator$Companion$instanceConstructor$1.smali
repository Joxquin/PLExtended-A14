.class final synthetic Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# static fields
.field public static final d:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;->d:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-class v2, Lcom/android/wm/shell/animation/l;

    const-string v3, "<init>"

    const-string v4, "<init>(Ljava/lang/Object;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/wm/shell/animation/l;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/animation/l;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
