.class final Lcom/android/launcher3/folder/FolderAnimationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mCellLayout:Lcom/android/launcher3/CellLayout;

.field private mCellLayoutClipChildren:Z

.field private mCellLayoutClipPadding:Z

.field private mContentClipChildren:Z

.field private mContentClipToPadding:Z

.field private mFolderClipChildren:Z

.field private mFolderClipToPadding:Z

.field final synthetic this$0:Lcom/android/launcher3/folder/FolderAnimationManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/FolderAnimationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mFolderClipChildren:Z

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mFolderClipToPadding:Z

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->a(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mContentClipChildren:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->a(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mContentClipToPadding:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayoutClipChildren:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayoutClipPadding:Z

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->a(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getClipChildren()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mFolderClipChildren:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getClipToPadding()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mFolderClipToPadding:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->a(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mContentClipChildren:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->a(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mContentClipToPadding:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayoutClipChildren:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayoutClipPadding:Z

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->b(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->a(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderAnimationManager;->a(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager$1;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method
