.class final Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$1;->this$0:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$1;->this$0:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->e(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->f(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/String;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
