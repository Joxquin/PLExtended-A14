.class public interface abstract Lcom/android/launcher3/AutoInstallsLayout$SourceResources;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static wrap(Landroid/content/res/Resources;)Lcom/android/launcher3/AutoInstallsLayout$SourceResources;
    .locals 1

    new-instance v0, Lcom/android/launcher3/AutoInstallsLayout$SourceResources$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/AutoInstallsLayout$SourceResources$1;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 0

    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 0

    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
.end method
