.class public final synthetic Lcom/android/launcher3/folder/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/folder/FolderNameEditText;

.field public final synthetic e:[Landroid/view/inputmethod/CompletionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderNameEditText;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/m;->d:Lcom/android/launcher3/folder/FolderNameEditText;

    iput-object p2, p0, Lcom/android/launcher3/folder/m;->e:[Landroid/view/inputmethod/CompletionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/m;->d:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object p0, p0, Lcom/android/launcher3/folder/m;->e:[Landroid/view/inputmethod/CompletionInfo;

    sget v1, Lcom/android/launcher3/folder/FolderNameEditText;->d:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0, p0}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method
