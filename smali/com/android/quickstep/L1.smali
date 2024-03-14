.class public final synthetic Lcom/android/quickstep/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I[Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/L1;->a:I

    iput-object p2, p0, Lcom/android/quickstep/L1;->b:[Lcom/android/systemui/shared/recents/model/Task;

    iput p3, p0, Lcom/android/quickstep/L1;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/L1;->a:I

    iget-object v1, p0, Lcom/android/quickstep/L1;->b:[Lcom/android/systemui/shared/recents/model/Task;

    iget p0, p0, Lcom/android/quickstep/L1;->c:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->b(I[Lcom/android/systemui/shared/recents/model/Task;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
