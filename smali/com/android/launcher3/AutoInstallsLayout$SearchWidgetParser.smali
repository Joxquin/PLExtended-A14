.class public final Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;
.super Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;I)V

    return-void
.end method


# virtual methods
.method public final getComponentName(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object p0, p0, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v1, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "options"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v1, "restored"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method
