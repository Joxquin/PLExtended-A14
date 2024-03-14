.class public final Lcom/android/systemui/animation/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/systemui/animation/z;

.field public static final b:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/animation/z;

    invoke-direct {v0}, Lcom/android/systemui/animation/z;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/A;->a:Lcom/android/systemui/animation/z;

    sget-object v0, Ly0/e;->a:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->d:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/animation/x;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/animation/x;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->e:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/animation/x;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/animation/x;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->f:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/animation/x;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/animation/x;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->g:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/animation/x;

    invoke-direct {v5, v0, v4}, Lcom/android/systemui/animation/x;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3, v4}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/x;->e([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/animation/A;->b:Ljava/util/Map;

    return-void
.end method
