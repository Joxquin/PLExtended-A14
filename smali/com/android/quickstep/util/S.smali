.class public final synthetic Lcom/android/quickstep/util/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/S;->a:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iput p2, p0, Lcom/android/quickstep/util/S;->b:I

    iput-wide p3, p0, Lcom/android/quickstep/util/S;->c:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/S;->a:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iget v1, p0, Lcom/android/quickstep/util/S;->b:I

    iget-wide v2, p0, Lcom/android/quickstep/util/S;->c:J

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->a(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;IJLandroid/view/View;)V

    return-void
.end method
