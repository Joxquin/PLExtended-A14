.class abstract enum Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

.field public static final enum e:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

.field public static final enum f:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

.field public static final enum g:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

.field public static final synthetic h:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;


# instance fields
.field private final label:Ljava/lang/String;

.field private final overrideTag:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    invoke-direct {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->d:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    new-instance v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    invoke-direct {v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;-><init>()V

    sput-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->e:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    new-instance v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    invoke-direct {v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;-><init>()V

    sput-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->f:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    new-instance v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    invoke-direct {v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;-><init>()V

    sput-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->g:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->h:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->label:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->overrideTag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .locals 1

    const-class v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->h:[Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->overrideTag:I

    return p0
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e(Landroid/view/View;I)V
.end method
