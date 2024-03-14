.class public final synthetic LO1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:LO1/l;

.field public final synthetic e:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;


# direct methods
.method public synthetic constructor <init>(LO1/l;Lcom/android/launcher3/views/OptionsPopupView$OptionItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/g;->d:LO1/l;

    iput-object p2, p0, LO1/g;->e:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LO1/g;->d:LO1/l;

    iget-object p0, p0, LO1/g;->e:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {v0, p1, p0}, LO1/l;->b(Landroid/view/View;Lcom/android/launcher3/views/OptionsPopupView$OptionItem;)Z

    return-void
.end method
