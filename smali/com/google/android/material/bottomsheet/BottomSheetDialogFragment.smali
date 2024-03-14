.class public Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onCreateDialog()Landroid/app/Dialog;
    .locals 2

    new-instance v0, Ln2/q;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result p0

    invoke-direct {v0, p0, v1}, Ln2/q;-><init>(ILandroid/content/Context;)V

    return-object v0
.end method
